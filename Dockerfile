FROM drydock/u14jav:prod

COPY * /

RUN	java "-Dcom.adobe.systemIdsForWhichTheTermsOfTheAdobeLicenseAgreementAreAccepted=$(java IdHelper)" -jar apache-flex-sdk-converter.jar -flexVersion 4.15.0 -flashVersions 11.0 -airVersion 2.6 -platforms LINUX -fontkit -fdkDir /flex-sdk-4.15.0 -mavenDir ~/.m2/repository download convert && \
	rm -rf /flex-sdk-4.15.0 IdHelper apache-flex-sdk-converter.jar

