import React from "react"

const DropDown = ({ storyId, deleteStory }) => {
  return (
    <div className="dd-menu">
      <button 
        className="delete-btn"
        onClick={() => deleteStory(storyId)}
      >
        Delete story
      </button>
    </div>
  );
};

class StoryIndexItem extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      dropDown: false
    }
    this.openDropDown = this.openDropDown.bind(this);
    this.closeDropDown = this.closeDropDown.bind(this);
  }

  openDropDown() {
    this.setState({dropDown: true})    
  }

  closeDropDown() {
    this.setState({dropDown: false})
  }

  render() {
    const months = { 
      0: "Jan", 
      1: "Feb", 
      2: "Mar", 
      3: "Apr",
      4: "May",  
      5: "Jun",  
      6: "Jul", 
      7: "Aug",  
      8: "Sep",  
      9: "Oct",
      10: "Nov",  
      11: "Dec" 
    }
    const { story, deleteStory } = this.props;
    const date = new Date(story.createdAt);
    const month = months[date.getMonth()];
    const day = date.getDate();
    
    const imageUrl = story.imageUrl ?  story.imageUrl : null;

    return (
      <>
        <div className = "divider-2" >
          <li className="story-details" key={story.id}>
            <h3 className="story-title">{story.title}</h3>
            <img src={imageUrl} className="story-img"/>
            <div className="story-body">{story.body}</div>
            <div className="story-stats-container">
              <h4 
                className="date-created"
              >
                Published on {month} {day}
              </h4>
              <div className="dd-background">
                <div className="dd-btn-container">
                  <button
                    className="dd-btn"
                    onClick={ this.state.dropDown ? this.closeDropDown : this.openDropDown}
                  >
                    <i className="fas fa-chevron-down"></i>
                  </button>
                </div>
                <div className="dd-menu-container">
                  {
                  this.state.dropDown && <DropDown storyId={story.id} deleteStory={deleteStory}/>
                  }
                </div>
              </div>
            </div>
          </li>
        </div>
      </>
    )
  }
}

export default StoryIndexItem