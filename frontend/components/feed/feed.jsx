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
    const { stories, users } = this.props;

    return (
      <>
        <EditorsPick stories={stories} />
        <Stories stories={stories} />
        <Popular stories={stories} />
      </>
    );
  }
}

export default Feed;
