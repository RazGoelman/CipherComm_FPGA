
---

# CypheXcomm FPGA

### 🔐 **CypheXcomm – Secure Hardware Data Pipeline for Critical Communication**

A modular, scalable, and real-time FPGA-based platform for robust, hardware-level encryption and secure communication, tailored for industrial, IoT, and mission-critical systems.

---

## 🧠 System Architecture

CypheXcomm is built with a **layered and modular architecture**, where each block addresses a distinct function in the secure data pipeline. Data flows through all security and processing stages, each with strict separation and testability:

1. **Input Layer** – Multi-protocol data capture (UART, SPI, I2C, GPIO, ETH).
2. **Encoder** – Frames, validates, and prepares data for processing.
3. **Scrambler** – LFSR-based scrambling for obfuscation and physical-layer security.
4. **Encryption** – Lightweight XOR encryption (upgradable to stronger block ciphers).
5. **FIFO & Bridge** – Reliable buffering between asynchronous modules.
6. **Transmission** – Handles valid flag, framing, and timing.
7. **Reception** – Robust sync and validation of incoming frames.
8. **Decryption** – Full pipeline reversal (decryption + descrambling).
9. **Decoding** – Data integrity checks and reassembly.
10. **Output Layer** – Custom UART TX, parity, frame abstraction, and LED/seven-segment debug output.

All modules are **pure VHDL**, testable as units and as a complete chain (see `/sim`).
**Debug signals** and validation hooks are included for deep tracing and validation.

---

## 🛡️ Key Features

* **Multi-layer Hardware Security:** Scrambling + Encryption + CRC at RTL.
* **Protocol Agnostic:** Modular input for UART/SPI/I2C/GPIO/Ethernet.
* **Extensive Debugging:** LED, Seven Segment, and UART debug signals for every stage.
* **Simulation Ready:** Layered testbenches for every block; end-to-end full-chain simulation.
* **Python Integration:** Python tools and scripts (in `/tester` or `/python`) for simulating and parsing UART data (useful for rapid testing and GUI demos).
* **Vivado IP Integrator Friendly:** Clean hierarchy for easy integration with custom IP blocks.
* **Submodule Support:** System can manage external or reusable VHDL/IP blocks as Git submodules.

---

## ✅ Current Status

| Module/Layer        | Status         | Notes                                                    |
| ------------------- | -------------- | -------------------------------------------------------- |
| Input Logic         | ✅ Done         | Multi-protocol ready, simulation and hardware tested     |
| Encoder             | ✅ Done         | CRC, parity, framing, and command support                |
| Scrambler           | ✅ Done         | LFSR scrambling, verified with matching descrambler      |
| Encryption          | ✅ Done         | XOR logic, easily upgradable                             |
| Transmission        | ✅ Done         | Full handshake, FIFO, valid/data integrity               |
| Reception           | ✅ Done         | Robust with CRC and framing                              |
| Decryption          | ✅ Done         | Full pipeline reversal, descrambler included             |
| Decoding            | ✅ Done         | Data, CRC, and error signals to debug                    |
| Output Layer        | ⚠️ In Progress | Custom UART TX, parity, and abstraction; in final tuning |
| Python Tester Tools | ⚠️ In Progress | Simulated UART/CRC pipeline in Python                    |

* **Branch Management:** Each layer is maintained in its own Git branch for safe, stable merges.
* **Simulation Benches:** Located in `/sim` and `/tester` (for Python).
* **Constraints/XDC:** Board pinouts and clock domains for Nexys4 DDR rev C.

---

## 📦 Project Structure

| Path/File                     | Description                                   |
| ----------------------------- | --------------------------------------------- |
| `src/scrambler.vhd`           | LFSR-based bit scrambler                      |
| `src/encryption_logic.vhd`    | Simple XOR encryption (modular for upgrades)  |
| `src/data_transmission.vhd`   | Pipeline FSM, valid/data/CRC to FIFO          |
| `src/data_reception.vhd`      | CRC validation and handshake logic            |
| `src/decryption_logic.vhd`    | Combines XOR decryption + descrambling        |
| `src/decoding.vhd`            | Error checks, re-assembly, and debug          |
| `src/output_display.vhd`      | LED/Seven-segment output, UART abstraction    |
| `src/uart_tx_with_parity.vhd` | UART transmitter with parity bit and framing  |
| `src/uart_frame_encoder.vhd`  | Adds command IDs, start, and parity to frames |
| `constraints.xdc`             | Board pin mapping for UART, LEDs, BTN, etc.   |
| `/tester`                     | Python simulation and UART frame demo scripts |
| `/sim`                        | Vivado/ModelSim VHDL testbenches (per layer)  |

---

## 🚀 Quick Start

1. **Clone recursively:**
   `git clone --recurse-submodules https://github.com/RazGoelman/CipherComm_FPGA.git`

2. **Open in Vivado (2021.1+):**
   Import as a project, or open the block design.

3. **Generate bitstream:**
   Use *Generate Bitstream* from Vivado GUI or TCL.

4. **Connect hardware:**

   * USB-UART for RX/TX.
   * (Optional) Onboard LEDs and Seven-Segment for debug.
   * BTN (BTNC) for demo triggers.

5. **Python Test/Demo:**
   Use scripts under `/tester` for GUI/CLI simulation and frame validation.

---

## 📌 Hardware & Integration Notes

* **LEDs:** `tx_busy`/error/debug/status mapped to LEDs and SSEG for fast diagnosis.
* **UART:** `UART_TXD`/`UART_RXD` routed to USB-RS232 (via XDC).
* **Clock:** Default `clk100mhz` pin; MMCM can generate system clocks.
* **FIFO:** Utilizes Xilinx FIFO Generator IP for async buffering.
* **BTN:** User button mapped for demo and data injection.
* **Submodules:**
  For contributing or extending, add reusable modules as Git submodules for versioned, decoupled logic.

---

## 🧑‍💻 Contributing

* **Branches:**
  Please use feature branches for each module/feature.
  Example: `feature/uart_output_layer`, `fix/encryption_logic`

* **Pull Requests:**
  PRs are reviewed for code clarity, testbench inclusion, and simulation logs.

* **Python Demos:**
  Contributions to `/tester` are welcome for extended simulation, protocol emulation, and GUI frontends.

* **Docs:**
  Please update README and add block diagrams if introducing a new architectural feature.

---

## 👤 Author

Raz Goelman
📧 [goelmanraz@gmail.com](mailto:goelmanraz@gmail.com)

---

## 📄 License

CypheXcomm FPGA is released for academic, research, and demonstration purposes.
You may use, adapt, or extend the system with attribution.
For commercial use, please contact the author.

---

**For any issue, suggestion, or collaboration, feel free to open an Issue or contact me directly!**

---

