# IoTAware
MSc Computer Science Dissertation Project - How to Ensure Users Have Awareness and Control of the Collection, Storage and Processing of their Personal Data within IoT Systems.

## Project Summary

Internet of Things (IoT) devices create new ways through which personal data is collected and processed. As such, end users frequently have little awareness of, and even less control over, their personal data collection, storage and processing. Given privacy behaviours of individuals are often inconsistent with their stated attitudes (a phenomenon known as the “privacy paradox”), the challenges of managing privacy choices in the IoT, will aggravate these inconsistencies and potentially lead to troublesome or regrettable experiences. **To help people address these privacy inconsistencies, this project proposes a conceptual architectural model and mock-up prototype design of a privacy awareness and control interface for the IoT**. Its personalised privacy notification approach juxtaposes users’ general privacy attitudes towards IoT technologies and the privacy riskiness of particular nearby IoT resources. The system notifies users of the existence of nearby IoT sensors and, by highlighting any privacy discrepancies, nudges users toward making decisions to control their privacy in alignment with their privacy attitudes. Although the infrastructure of “IoTAware” intends to be applicable to a wide range of IoT scenarios that involve notifying users of nearby IoT sensors, the solution is envisaged in a setting of IoT cameras using facial recognition technology. This paper provides an overall evaluation of the solution, primarily through a user study carried out as two online experiments. The findings suggest that the privacy discrepancy approach is effective at nudging users to behave in line with their privacy attitudes in the IoT.

Figure 1 illustrates the system’s architecture working in a particular scenario with an IoT device using facial recognition technology. This proposed infrastructure is intended to be applicable to a wide range of IoT scenarios that involve notifying users of nearby IoT sensors. The following steps describe a typical work flow of how a user interacts with the IoTAware system.
1. The user installs the IoTAware app on their smartphone and agrees to upload
an image of their face and register their identity by signing-in using Google’s
OAuth 2.0.
2. After authenticating their identity, the user completes the CFIP survey, this
measures measure the underlying privacy attitudes and decision processes of
the user in the context of IoT.
3. When the user enters the immediate proximity of the IoT camera, IoTAware
picks up the signal of the Bluetooth low energy (BLE) beacon attached to the
camera. The beacon also broadcasts the URL to the Information Privacy Risk
Repository (IPRR) responsible for the particular camera network.
4. A privacy nudges is sent to the user, highlighting any discrepancy between
the user’s privacy-concern scores and the privacy-risk scores of the IoT
resource. The user then reviews the information and decides whether to
control the device’s permission requests. Once the user makes their choice,
the corresponding setting is sent to the Privacy Settings Implementation Point
(PSIP) for update.
5. The PSIP upon verifying (checking OAuth token) the request sent by the user,
first updates the local database with the user’s current setting and then
forwards the request to the Privacy Mediator for appropriate action.
6. The Privacy Mediator, upon receiving the request from the PSIP, first retrieves
the user’s facial embedding from the training server and then starts
performing facial recognition to detect the user’s face in the video stream.
Depending on the privacy setting selected by the user the Privacy Mediator
either denatures the user’s face or retains unaltered video frames.

![alt text](https://github.com/bradclemson97/IoTAware/blob/main/IoTAware_System_Architecture.PNG "IoTAware Software Architecture")

Figure 1: Illustration of IoTAware’s System Architecture. (IPRR = IoT Privacy Risk Repository, PSIP = Privacy Settings Implementation Point).
