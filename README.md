🧮 Signed Calculator in VHDL
A modular signed calculator built in VHDL for CPET coursework, designed to reinforce digital logic fundamentals, two’s complement arithmetic, and seven-segment display interfacing. This project showcases Elie’s individual mastery of hardware description, manual conversion logic, and clean modular design.

🧩 Features
- Modular Architecture:
Clean separation of logic across distinct VHDL files including Signed_Calculator.vhd, Converter.vhd, Displayer.vhd, and Sign_Mux.vhd.
- Two’s Complement Conversion:
Converts signed binary inputs to unsigned magnitude using manual logic in Converter.vhd.
- Sign Detection:
Sign_Mux.vhd identifies whether the input is positive or negative and routes display logic accordingly.
- Seven-Segment Display Output:
Displayer.vhd maps digits to segment patterns for visual output, supporting signed values.
- Top-Level Integration:
CalculatorDisplay.vhd ties all modules together, managing input flow, conversion, and display coordination.
- Manual Logic Implementation:
No reliance on abstracted libraries—every operation is manually defined for clarity and control.

🧪 Testing Highlights
✅ Verified two’s complement conversion for edge cases
🔍 Confirmed correct segment display for positive and negative values
🛡️ Validated sign detection logic across full input range
🧵 Modular simulation of each component using testbenches

📁 File Structure
├── Signed_Calculator.vhd       # Core arithmetic logic
├── CalculatorDisplay.vhd       # Top-level integration module
├── Converter.vhd               # Signed to unsigned conversion using two’s complement
├── Displayer.vhd               # Seven-segment display logic
├── Sign_Mux.vhd                # Sign detection and routing logic


👤 Project Notes
- Developed individually by Elie
- Focused on clarity, modularity, and manual implementation
- Built for hands-on mastery of signed arithmetic and display interfacing
  
🛠️ Technologies
- VHDL
- Manual Two’s Complement Logic
- Seven-Segment Display Mapping
- Modular Digital Design
- Simulation & Testbenching


