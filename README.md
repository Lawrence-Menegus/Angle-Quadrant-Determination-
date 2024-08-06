# Angle Quadrant Determination Program
<p>This assembly language program determines the quadrant of a given angle input by the user. It categorizes the angle into one of the four quadrants or specifies if the angle falls on an axis. If the angle is outside the range of 0 to 360 degrees, it informs the user accordingly.</p>

### Program Overview
<p>The program performs the following tasks:</p>
<ul>
    <li>Prompts the user to enter an angle between 0 and 360 degrees.</li>
    <li>Validates the input to ensure it falls within the specified range.</li>
    <li>Determines if the angle is on an axis or in one of the four quadrants.</li>
    <li>Prints a message indicating the quadrant or if the angle is on an axis.</li>
    <li>Handles invalid input by informing the user that the number must be between 0 and 360 degrees.</li>
</ul>

### Compile and Run the Program
<p>To compile and run the program, follow these steps in your terminal:</p>
<b>Assemble the Program</b>:
<pre><code>nasm -f elf64 angles.asm -o angles.o</code></pre>
<b>Link the Program</b>:

<pre><code>ld angles.o -o angles</code></pre>
<b>Run the Program</b>:

<pre><code>./angles</code></pre>

### Usage
<p>1. The program starts by prompting the user to enter an angle:</p>
<ul>
    <li>Displays the message "Enter a angle number(0-360):".</li>
</ul>
<p>2. The user inputs an angle, which is stored in the variable `angle`:</p>
<ul>
    <li>Checks if the input is 0, 90, 180, 270, or 360, indicating the angle falls on an axis.</li>
    <li>If the angle is on an axis, it prints "your angle fall on a axis." and exits the program.</li>
</ul>
<p>3. The program validates if the angle is within the range of 0 to 360 degrees:</p>
<ul>
    <li>If the angle is less than 0 or greater than 360, it prints "the Number must be between (0 - 360)" and exits the program.</li>
</ul>
<p>4. The program determines the quadrant of the angle:</p>
<ul>
    <li>If the angle is between 0 and 90 degrees, it prints "the angle in quadrant:I".</li>
    <li>If the angle is between 90 and 180 degrees, it prints "the angle in quadrant:II".</li>
    <li>If the angle is between 180 and 270 degrees, it prints "the angle in quadrant:III".</li>
    <li>If the angle is between 270 and 360 degrees, it prints "the angle in quadrant:IV".</li>
</ul>

### Contribtor 
<p>Lawrence Menegus</p>
