import React from "react";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {username: "", email: "", password: ""};
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  update(field) {
    return e => {
      this.setState({ [field]: e.currentTarget.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();

    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(this.props.closeModal);
  }

  demoLogin(e) {
    e.preventDefault();

    const demo = {  
      username: "guest", email: "guest@demo.com", password: "password" 
    };

    (this.props.formType === 'Log In' ?
      this.props.processForm(demo) : this.props.login(demo))
      .then(this.props.closeModal);
  }

  render() {
    const errorsList = this.props.errors.map((error, idx) => (
      <li key={idx}>{error}</li>
    ));

    return (
      <div className="session-form-container">
        <button className="session-close" onClick={this.props.closeModal}>x</button>
      
          {this.props.header}
        
        {
          this.props.formType === "Log In" ? <p className="session-form-details">Sign in to get personalized story recommendations, follow authors and topics you love, and interact with stories.</p> :
            <p className="session-form-details">Create an account to receive great stories in your inbox, personalize your homepage, and follow authors and topics that you love.</p>
        }

        <form className="session-form" onSubmit={this.handleSubmit}>

          {this.props.formType === "Sign Up" ?
            <label className="session-form-label">Email:
              <input
                type="text"
                value={this.state.email}
                onChange={this.update("email")}
              />
            </label> : null
          }

          <label className="session-form-label">Username:
            <input 
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
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

        <footer className="session-form-footer">
          {this.props.footer} {this.props.otherForm}
          <button
            className="session-demo-submit"
            onClick={this.demoLogin}
          >Demo Login</button>

          <p className="session-form-footer-terms">{`To make Daily Prophet work, we log user data and share it with service providers. Click ${this.props.formType} above to accept Daily Prophet’s Terms of Service & Privacy Policy.`}</p>
        </footer>
      </div>
    );
  };
}

export default SessionForm;