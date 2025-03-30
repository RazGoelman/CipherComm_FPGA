# CipherComm_FPGA
# 🔐 CipherComm_FPGA – Secure Data Communication over UART

A modular and layered FPGA system for secure, real-time communication using custom logic for data scrambling, encryption, transmission, decryption, and UART output.

---

## 🧠 System Overview

The system is designed with **layered architecture** where each layer handles a specific stage of data processing and communication.  
Data flows through the layers in a pipeline fashion, from input to UART output:

1. **Input Handling** – Captures raw data from interfaces like SPI/UART.
2. **Bit Scrambling** – Scrambles the data using an LFSR-based method to improve communication security.
3. **Encryption** – Performs XOR encryption with a predefined key (e.g., `0x5A`).
4. **Data Transmission** – Handles valid flagging and transfer to a receiver.
5. **Data Reception** – Receives incoming valid data from the transmission logic.
6. **Decryption** – Reverses the encryption and scrambling operations to recover original data.
7. **UART Output** – Frames and transmits the recovered data via UART with optional parity and frame abstraction.

All modules are built in VHDL and verified progressively through simulations and layered integration.

---

## ✅ Status

| Module              | Status     | Notes                                                 |
|---------------------|------------|--------------------------------------------------------|
| Input Logic         | ✅ Done     | Data acquisition from input interfaces                |
| Scrambler           | ✅ Done     | LFSR scrambling verified in simulation                |
| Encryption          | ✅ Done     | XOR encryption logic stable and integrated            |
| Transmission        | ✅ Done     | Passes valid flag and data through                    |
| Reception           | ✅ Done     | Data sink from transmission with handshake            |
| Decryption          | ✅ Done     | Full reverse logic (XOR + descrambling)               |
| UART Output Layer   | ⚠️ In Progress | FIFO, parity, and framing integrated, testing ongoing |

- All layers are developed and tested **independently in separate Git branches** to enable stable integration.
- A full simulation bench for each layer exists under the `/sim` directory.
- **XDC constraints** are aligned to Nexys4 DDR board (rev C) for UART and LED testing.

---

## 📦 File Highlights

| File Name                   | Description                                 |
|-----------------------------|---------------------------------------------|
| `scrambler.vhd`             | LFSR-based scrambling logic                 |
| `encryption_logic.vhd`      | XOR-based encryption block                  |
| `data_transmission.vhd`     | Internal data pipeline and flags            |
| `data_reception.vhd`        | Synchronization with receiver input         |
| `decryption_logic.vhd`      | Combined descrambler and decryptor          |
| `output_data_layer.vhd`     | Final UART output with FIFO and abstraction |
| `uart_tx_with_parity.vhd`   | Custom UART TX with parity and bit framing  |
| `uart_frame_encoder.vhd`    | Encodes command ID and start flags into frames |
| `constraints.xdc`           | XDC pin assignments for UART TX and LEDs    |

---

## 🚀 Getting Started

1. Open the project in **Vivado 2021.1 or later**.
2. Run **Block Design > Generate Bitstream**.
3. Connect a USB-UART converter to receive serial output.
4. (Optional) Use a Python script to parse framed UART data.

---

## 📌 Notes

- `tx_busy` signal is connected to onboard **LED[0]** for visual feedback.
- `UART_TXD` is mapped via `.xdc` to the **USB-RS232** port of the Nexys4 DDR board.
- Clock input is 100 MHz and configured via `clk100mhz` pin.

---

## 👨‍💻 Author

Raz Goelman  
📧 goelmanraz@gmail.com

---

## 📄 License

This project is for academic and demonstration purposes only.  
Feel free to use or adapt under open terms with attribution.
