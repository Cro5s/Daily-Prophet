import React from "react";

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = this.props.story;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleFile = this.handleFile.bind(this);
  }

  componentWillUnmount() {
    this.props.clearStoryErrors();
  }

  update(field) {
    return e => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();

    const story = Object.assign({}, this.state);
    this.props.action(story)
      .then(() => this.props.history.push(`/users/${this.props.currentUser.id}`));
  }

  handleFile(e) {
    this.setState({imageFile: e.currentTarget.files[0]});
  }

  handleFileSubmit(e) {
    e.preventDefault();
    const formData = new FormData();
    formData.append("story[title]", this.state.title);
    formData.append("story[image]", this.state.imageFile);
    $.ajax({
      method: `POST`,
      url: `/api/stories`,
      data: formData,
      contentType: false,
      processData: false,
    }).then(
      (response) => console.log(response.message),
      (response) => console.log(response.response.JSON)
    );
  }

  render() {
    console.log(this.state)

    const errorsList = this.props.errors.map((error, idx) => (
      <li className="story-form-errors" key={idx}>{error}</li>
    ));

    return (
      <div className="story-form-page-container">
        <div className="story-form-container">
          <form className="story-form" onSubmit={this.handleSubmit}>
            <div className="story-form-details-container">
              <div className="story-form-title-container">
                {this.props.formType === "Edit story" ? (
                  <>
                    <label className="story-form-title-label">Title</label>
                    <input
                      className="story-form-title"
                      type="text"
                      value={this.state.title}
                      onChange={this.update("title")}
                    />
                    <input
                      className="story-form-body"
                      type="textarea"
                      value={this.state.body}
                      onChange={this.update("body")}
                    />
                    <div className="story-errors">
                      <ul>{errorsList}</ul>
                    </div>
                  </>
                ) : (
                  <>
                    <input
                      className="story-form-title"
                      type="text"
                      value={"Title"}
                      onChange={this.update("title")}
                    />
                    <div className="image-btn-container">
                      <input 
                        className="image-btn"
                        type="file"
                        onChange={this.handleFile}
                      />
                    </div>
                    <input
                      className="story-form-body"
                      type="textarea"
                      value={"Tell your story..."}
                      onChange={this.update("body")}
                    />
                  </>
                )}
              </div>
            </div>
          </form>
        </div>
      </div>
    );
    
  }

}

export default StoryForm;