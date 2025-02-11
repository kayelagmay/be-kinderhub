const express = require('express');
const router = express.Router();
const userRoutes = require('./users');
const eventRoutes = require('./events');
const bookingRoutes = require('./bookings');
const childrenRoutes = require('./children');

router.use('/users', userRoutes);
router.use('/events', eventRoutes);
router.use('/bookings', bookingRoutes);
router.use('/children', childrenRoutes);

// Optional root route to check if API is running
router.get('/', (req, res) => {
  res.json({ message: 'Welcome to the KinderHub API' });
});

module.exports = router;