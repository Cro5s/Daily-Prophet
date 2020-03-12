import React from "react";

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = this.props.story;
    this.formData = new FormData();
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleFile = this.handleFile.bind(this);
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  update(field) {
    return e => this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();

    this.formData.append("story[title]", this.state.title);
    this.formData.append("story[body]", this.state.body);

    this.props.action(this.formData)
      .then(() => this.props.history.push(`/users/profile`));
  }

  handleFile(e) {
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();

    fileReader.onloadend = () => {
      this.setState({imageFile: file, imageUrl: fileReader.result});

    };

    if (file) {
      fileReader.readAsDataURL(file);
    };
  }

  handleFileSubmit(e) {
    e.preventDefault();

    this.formData.append("story[title]", this.state.title);

    if (this.state.imageFile) {
      this.formData.append("story[image]", this.state.imageFile);
    };

  }

  render() {
    const preview = this.state.imageUrl ? <img scr={this.state.imageUrl} /> : null

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
                  <div className="story-form-contents">
                    <div className="story-form-inputs-container">
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
                    </div>
                  </div>
                ) : (
                  <div className="story-form-contents">
                    <div className="image-btn-container">
                      <label className="file-upload-div">
                        +
                        <input
                          className="image-btn"
                          type="file"
                          onChange={this.handleFile}
                        />
                      </label>
                    </div>
                    <div className="story-form-inputs-container">
                      <input
                        className="story-form-title"
                        type="text"
                        placeholder="Title"
                        onChange={this.update("title")}
                      />
                      <input
                        className="story-form-body"
                        type="textarea"
                        placeholder="Tell your story..."
                        onChange={this.update("body")}
                      />
                      {preview}
                      <div className="story-errors">
                        <ul>{errorsList}</ul>
                      </div>
                      <button
                        className="temp-btn"
                        onClick={this.handleSubmit}
                      >
                        Create story
                      </button>
                    </div>
                  </div>
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