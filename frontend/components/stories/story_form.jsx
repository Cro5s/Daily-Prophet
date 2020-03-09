import React from "react";

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = this.props.story;
    this.handlesubmit = this.handlesubmit.bind(this);
  }

  update(field) {
    return e => this.setState({ [field]: e.currentTarget.value });
  }

  handlesubmit(e) {
    e.preventDefault();

    const story = Object.assign({}, this.state);
    this.props.action(story)
      .then(() => this.props.history.push(`/users/${this.props.currentUser.id}`));
  }

  render() {
    const errorsList = this.props.errors.map((error, idx) => (
      <li className="story-form-errors" key={idx}>{error}</li>
    ));

    return (
      <div className="story-form-page-container">
        
        <div className="story-form-container">
          <div className="story-form-details-container">
            <div className="story-form-title-container">
              <input className="story-form-title" type="text" />

              <div className="story-form-buttons-container">
                <div className="story-form-button-container">
                  <button className="create-story-btn">Write a story</button>
                </div>
              </div>

              <div className="stories-container">
                <li></li>
              </div>

            </div>
          </div>
        </div>

      </div>
    );
  }
}

export default StoryForm;