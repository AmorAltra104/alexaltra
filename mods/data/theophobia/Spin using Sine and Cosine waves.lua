xPosition = 0;
yPosition = 0;
defaultX = 0;
defaultY = 0;
xElapse = 0;
yElapse = 0;

speed = 1.5;
radius = 100;

object = 'dad';

function onCreate()
	defaultX = getProperty(object .. '.x');
    defaultY = getProperty(object .. '.y');

    setProperty(object .. '.y', defaultY + (getProperty(object .. '.height') / 2));

    radius = getProperty(object .. '.height') / 2;
end

function onUpdatePost(elapsed)
    xElapse = xElapse - (speed * elapsed);
    yElapse = yElapse - (speed * elapsed);

    xPosition = math.sin(xElapse) * radius;
    setProperty(object .. '.x', defaultX + xPosition);

    yPosition = math.cos(yElapse) * radius;
    setProperty(object .. '.y', defaultY + yPosition);
end