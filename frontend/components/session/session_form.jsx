import React from "react";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {username: "", email: "", password: ""};
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => {
      this.setState({ [field]: e.currentTarget.value });
    };
  }

  handleSubmit() {
    return (e) => {
      e.preventDefault();

      const user = Object.assign({}, this.state);
      this.props.processForm(user).then(this.props.closeModal);
    };
  }

  demoLogin() {
    return (e) => {
      e.preventDefault();

      const demo = {  
        username: "guest", email: "guest@demo.com", password: "password" 
      };

    }
  }

  render() {
    const errorsList = this.props.errors.map((error, idx) => {
      <li key={idx}>{error}</li>
    });

    return (
      <div className="session-form-container">
        <button className="session-close" onClick={this.props.closeModal}>
          {this.props.header}
        </button>

        <form className="session-form" onSubmit={this.handleSubmit()}>
          <h1>{this.props.formType}</h1>

          <label className="session-form-label">Username:
            <input 
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
          </label>
          <label className="session-form-label">Email:
            <input 
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
            />
          </label>
          <label className="session-form-label">Password:
            <input 
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />
          </label>
          <div className="session-errors">
            <ul>
              {errorsList}
            </ul>
          </div>
          
        <button 
          className="session-form-submit" 
          onClick={this.handleSubmit}
        >{this.props.formType}</button>
        </form>

        <footer>
          {this.props.footer} {this.props.otherForm}
        </footer>
      </div>
    );
  };
}

export default SessionForm;