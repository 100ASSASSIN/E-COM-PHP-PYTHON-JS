import React, { useState, useEffect } from 'react';
import axios from 'axios';

const MyComponent = () => {
  const [data, setData] = useState(null);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    // Define a function to fetch data
    const fetchData = async () => {
      try {
        // Make a GET request using Axios
        const response = await axios.get('https://www.w3schools.com/django/django_urls.php');
        // Set the fetched data to the state
        setData(response.data);
        setIsLoading(false);
      } catch (error) {
        console.error('Error fetching data:', error);
        setIsLoading(false);
      }
    };

    // Call the fetch function when the component mounts
    fetchData();

    // Clean up function (optional)
    return () => {
      // You can cancel ongoing requests or do other cleanups here if necessary
    };
  }, []); // Empty dependency array ensures the effect runs only once, like componentDidMount

  // Render loading state while data is being fetched
  if (isLoading) {
    return <div>Loading...</div>;
  }

  // Render fetched data
  return (
    <div>
      <h1>My Component</h1>
      <pre>{JSON.stringify(data, null, 2)}</pre>
    </div>
  );
};

export default MyComponent;
