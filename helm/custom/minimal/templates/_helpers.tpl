# Here we set the value of 'envShort' variable based on the value of the '.Values.environment' variable.
{{- define "envShort" -}}
{{- if eq .Values.environment "production" -}}
prod
{{- else -}}
non-prod
{{- end -}}
{{- end -}}