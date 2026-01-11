# Day 25: Connect Frontend to API

## Learning Objectives

By the end of this day, you will:
- Integrate frontend JavaScript with backend API
- Handle API responses and errors gracefully
- Display visitor count on resume webpage
- Complete the full-stack integration
- Test end-to-end functionality

## Prerequisites

- [ ] Completed Day 24 (API Gateway created)
- [ ] API Gateway endpoint working and tested
- [ ] Frontend files in S3
- [ ] CORS configured on API Gateway
- [ ] Understanding of JavaScript fetch API

## Getting Started

### 1. Fork and Clone (If Not Done)

If you haven't already forked and cloned:

```bash
git clone https://github.com/YOUR_USERNAME/terraform-bootcamp.git
cd terraform-bootcamp
```

### 2. Create Your Working Branch

```bash
git checkout -b feat/day-25-connect-frontend-to-api
```

### 3. Navigate to Your Project

```bash
cd project-2/cloud-resume
```

### 4. Review Previous Days

Ensure your API Gateway is deployed and accessible.

## Tasks

Your goal is to complete the integration between frontend and backend.

### Task 1: Update JavaScript
- Update `website/script.js` to:
  - Call API Gateway endpoint on page load
  - Handle the response
  - Display visitor count on the page
  - Handle loading states (show spinner/placeholder)
  - Handle errors gracefully (network errors, API errors)

### Task 2: Update HTML
- Update `website/index.html` to:
  - Add a section to display visitor count
  - Include the script.js file
  - Make it visually appealing (not just raw number)
  - Add loading indicator

### Task 3: Upload Updated Files
- Upload updated HTML and JavaScript to S3
- Use `aws_s3_object` resource or manual upload
- Verify files are updated

### Task 4: Test End-to-End
- Visit your resume website
- Verify visitor count displays
- Refresh page and verify count increments
- Test error scenarios (disable API, etc.)
- Document the integration

## Project Structure

Your updated structure:

```
cloud-resume/
├── website/
│   ├── index.html (updated)
│   ├── styles.css
│   └── script.js (updated)
└── integration-testing.md
```

## Acceptance Criteria

- [ ] JavaScript calls API on page load
- [ ] Visitor count displays on page
- [ ] Count increments on each visit
- [ ] Error handling if API fails
- [ ] Professional UI (not just raw number)
- [ ] Loading states handled
- [ ] End-to-end testing successful

## Learning Resources

### Official Documentation
- [JavaScript Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [CORS Configuration](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-cors.html)
- [Error Handling in JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Control_flow_and_error_handling)

### Key Concepts to Research
- **Fetch API**: Making HTTP requests from browser
- **CORS**: Cross-Origin Resource Sharing
- **Error Handling**: Network and API errors
- **Async/Await**: Handling asynchronous operations
- **DOM Manipulation**: Updating page content

## Common Challenges

You might encounter:
- **CORS errors**: Ensure API Gateway CORS is configured
- **API endpoint**: Getting the correct API Gateway URL
- **Error handling**: Properly catching and displaying errors
- **State management**: Handling loading and error states

## Deliverables

Submit the following:

1. **Code Files**:
   - Updated `website/index.html`
   - Updated `website/script.js`

2. **Documentation**: `integration-testing.md` with:
   - Integration approach
   - Testing scenarios
   - Error handling strategy
   - Screenshots of working integration

3. **Demonstration**:
   - Screenshot of resume with visitor count
   - Show count incrementing
   - Show error handling

## Key Takeaways

After completing this day, you should understand:
- How to integrate frontend and backend
- CORS configuration and handling
- Error handling in web applications
- End-to-end testing approaches

## Project 2 Complete! 🎉

Congratulations! You've completed the Cloud Resume Platform. You now have:
- ✅ Static resume website on S3 + CloudFront
- ✅ Visitor counter API (Lambda + API Gateway)
- ✅ DynamoDB for data storage
- ✅ Custom domain with HTTPS (if applicable)
- ✅ VPC networking foundation
- ✅ Complete full-stack integration

## Next Steps

You're ready for **Project 3: Production Hardening & CI/CD**!

In Project 3, you'll add:
- CI/CD pipelines for automated deployment
- Monitoring and alerting
- Security hardening
- Backup strategies
- Performance optimization

---

**What You Have Now**: COMPLETE working cloud resume with visitor counter! 🎉

**Amazing work!** 🚀
