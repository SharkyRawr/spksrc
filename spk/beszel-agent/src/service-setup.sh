
KEY_FILE=${SYNOPKG_PKGVAR}/key.pub
if [ -r "${KEY_FILE}" ]; then
   BESZEL_PUBLIC_KEY=$(cat ${KEY_FILE})
   export KEY=${BESZEL_PUBLIC_KEY}
fi

BESZEL_AGENT=${SYNOPKG_PKGDEST}/bin/beszel-agent
SERVICE_COMMAND="${BESZEL_AGENT}"
SVC_BACKGROUND=y
SVC_WRITE_PID=y

service_postinst ()
{
   if [ -s "${KEY_FILE}" ]; then
      return
   fi
   if [ -n "${wizard_pub_key}" ]; then
      echo "${wizard_pub_key}" > ${KEY_FILE}
   fi
}
