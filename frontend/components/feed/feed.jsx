import React from "react";
import EditorsPick from "./editors_pick";
import Stories from "./stories";
import Popular from "./popular";

class Feed extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchStories();
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
      11: "Dec",
    };
    const { stories } = this.props;

    if (stories.length === 0) return null;

    return (
      <>
        <div className="editors-feed">
          <EditorsPick stories={stories} months={months} />
        </div>
        <div className="bottom-feed">
          <Stories stories={stories} months={months} />
          <Popular stories={stories} months={months} />
        </div>
      </>
    );
  }
}

export default Feed;
