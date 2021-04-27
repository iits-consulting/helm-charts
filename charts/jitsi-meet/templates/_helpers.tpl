
{{/* global name */}}
{{- define "jitsi-meet.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* global labels */}}
{{- define "jitsi-meet.labels" -}}
app.kubernetes.io/name: {{ include "jitsi-meet.name" . }}
helm.sh/chart: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/* global ENV variables
{{- define "default-environment-variables" -}}
XMPP_DOMAIN: jitsi.meet
XMPP_AUTH_DOMAIN: auth.jitsi.meet
XMPP_INTERNAL_MUC_DOMAIN: internal-muc.jitsi.meet
XMPP_MUC_DOMAIN: muc.jitsi.meet
XMPP_GUEST_DOMAIN: guest.jitsi.meet
JVB_BREWERY_MUC: jvbbrewery
ENABLE_XMPP_WEBSOCKET: {{ (.Values.websockets | default true) | ternary "1" "0" }}
TZ: {{ .Values.timeZone  | default "UTC" }}
PUBLIC_URL: {{ .Values.domain.proto | default "https" }}://{{ .Values.domain.host }}{{- if .Values.domain.port }}:{{ .Values.domain.port }}{{- end }}
{{- end -}}

*/}}
