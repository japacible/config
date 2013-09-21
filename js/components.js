/** @jsx React.DOM */
function hello() {
  console.log("hello");
  var Task = React.createClass({
    render: function() {
      return <div>{'Hello ' + this.props.name}</div>;
    }
  });

  React.renderComponent(
    <Task name="Jennifer" />,
    document.getElementById('content')
  );
};