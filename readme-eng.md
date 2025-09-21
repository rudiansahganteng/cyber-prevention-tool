# ⌨️ PhishGuard BASIC 
## Phishing Awareness Training System - Self-Hosted

<div align="center">

[![Node.js](https://img.shields.io/badge/Node.js-18+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-18+-blue.svg)](https://reactjs.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14+-blue.svg)](https://postgresql.org/)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue.svg)](https://docker.com/)
[![License](https://img.shields.io/badge/License-Internal_Use-red.svg)](#license)

**Complete phishing simulation platform for cybersecurity training**

</div>

---

# Security Awareness Platform — Self-Hosted (Ethical)

## 📋 Description

This open-source platform enables companies to train and educate their employees on cybersecurity. It's designed to run **self-hosted**, with a web interface for managing educational modules, simulation campaigns, and reports.

The primary objective is **educational** and **controlled**: all campaigns and simulations must be validated by security and HR teams before deployment.

This platform uses **Gemini AI** as an artificial intelligence model to automatically create:
- Campaign messages tailored to each user
- Personalized educational content
- Individual training sheets
- Accurate and professional reports
- All within a safe and legal framework

---

## ✨ Features

### 👥 User Management
- **Role-based system**: Admin, Reviewer, HR, Employee
- **Intuitive interface** for profile management
- **Secure authentication** with permission management

### 📚 Training Modules
- **Interactive creation** of educational content
- **Personalized paths** based on role and needs
- **Progress tracking** and knowledge assessment

### 🎯 Educational Simulations
- **Realistic scenarios** without real personal data
- **Controlled phishing tests** that are ethical
- **Immediate feedback** after each simulation

### 🤖 Artificial Intelligence
- **Automatic content generation** via Gemini AI
- **Message personalization** based on user profile
- **Detailed report creation** and professional analysis

### 📊 Dashboard
- **Security KPI visualization**
- **Performance improvement metrics**
- **Interactive charts** and analytics

### 📄 Reports and Exports
- **Anonymized reports** for internal audits
- **Customizable exports** (PDF, Excel, CSV)
- **Longitudinal progress tracking**

---

## 🛡️ Ethical Principles and Security

### 1. **Consent and Approval**
All campaigns must be validated by security and HR managers before deployment.

### 2. **Data Protection**
- No collection of passwords or confidential information
- Encryption of sensitive data
- Built-in GDPR compliance

### 3. **Anonymization**
All metrics and logs are anonymized or pseudonymized to protect privacy.

### 4. **Sandbox Mode**
Ability to test the platform without sending real communications to users.

### 5. **Legal Compliance**
- **GDPR & CCPA**: Regulatory compliance
- **Right to be forgotten**: Data deletion on request
- **Transparency**: Access to personal data

---

## 🚀 Installation (Self-Hosted)

### Prerequisites
- Node.js 18+
- PostgreSQL 14+
- Docker (optional)
- Git

### 1. Clone Repository
```bash
git clone https://github.com/Reaper-Official/cyber-prevention-tool/phishguard-basic.git
cd phishguard-basic
```

### 2. Install Dependencies
```bash
npm install
cd client && npm install
cd ../server && npm install
```

### 3. Database Configuration
```bash
# Create PostgreSQL database
createdb phishguard_db

# Copy configuration file
cp .env.example .env

# Edit environment variables
nano .env
```

### 4. Gemini AI Configuration
```bash
# Add your Gemini API key in .env
GEMINI_API_KEY=your_gemini_api_key
GEMINI_MODEL=gemini-pro
```

### 5. Launch Application
```bash
# Development mode
npm run dev

# Production mode
npm run build
npm start
```

### 6. Docker Installation (Optional)
```bash
docker-compose up -d
```

---

## 📖 Usage

### Initial Setup
1. **Access** `http://localhost:3000`
2. **Create** the main administrator account
3. **Configure** security settings
4. **Import** your users (CSV supported)

### Creating a Campaign
1. **Select** the simulation type
2. **Define** campaign parameters
3. **Generate** content with Gemini AI
4. **Get validation** from HR/Security
5. **Launch** the campaign

### Monitoring and Analysis
1. **Check** the real-time dashboard
2. **Analyze** results by department
3. **Export** reports for management
4. **Plan** complementary training

---

## 🔧 Advanced Configuration

### Environment Variables
```env
# Database
DB_HOST=localhost
DB_PORT=5432
DB_NAME=phishguard_db
DB_USER=phishguard
DB_PASS=your_password

# Security
JWT_SECRET=your_jwt_secret
BCRYPT_ROUNDS=12
SESSION_TIMEOUT=3600

# Gemini AI
GEMINI_API_KEY=your_api_key
GEMINI_MODEL=gemini-pro
AI_MAX_TOKENS=1000

# Email (SMTP)
SMTP_HOST=smtp.your-domain.com
SMTP_PORT=587
SMTP_USER=noreply@your-domain.com
SMTP_PASS=smtp_password

# Application
NODE_ENV=production
PORT=3000
BASE_URL=https://phishguard.your-domain.com
```

### Customization
- **Themes**: Modify CSS in `/client/src/styles/`
- **Templates**: Customize emails in `/server/templates/`
- **Languages**: Add translations in `/client/src/i18n/`

---

## 🤝 Contributing

### How to Contribute
1. **Fork** the project
2. **Create** a branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Code Standards
- **ESLint**: Style rules compliance
- **Prettier**: Automatic formatting
- **Tests**: Minimum 80% coverage
- **Documentation**: JSDoc for all functions

---

## 📞 Support

### Documentation
- **Wiki**: [Complete Documentation](https://github.com/Reaper-Official/phishguard-basic/wiki)
- **API**: [API Documentation](https://github.com/Reaper-Official/phishguard-basic/docs/api)

### Contact
- **Issues**: [GitHub Issues](https://github.com/Reaper-Official/phishguard-basic/issues)
- **Discussions**: [GitHub Discussions](https://github.com/Reaper-Official/phishguard-basic/discussions)
- **Email**: support@reaper-official.com

---

## 📄 License

This project is licensed under **Internal Use Only**.

⚠️ **Important**: This platform is designed exclusively for internal corporate use for cybersecurity training purposes. Any malicious use is strictly prohibited and may result in legal prosecution.

### Terms of Use
- ✅ Internal employee training
- ✅ Authorized security testing
- ✅ Internal security audits
- ❌ Real phishing attacks
- ❌ Unauthorized commercial use
- ❌ Malicious distribution

---

## 🙏 Acknowledgments

- **Google Gemini AI** for artificial intelligence
- **React Team** for the frontend framework
- **Node.js Community** for the backend ecosystem
- **PostgreSQL** for the database
- **All contributors** who make this project possible

---

<div align="center">

**Made with ❤️ by [Reaper Official](https://github.com/Reaper-Official)**

*For a safer internet and accessible cybersecurity for everyone*

</div>
