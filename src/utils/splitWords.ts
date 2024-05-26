export default function splitWords(camelCaseString: string) {
  return camelCaseString.replace(/([a-z])([A-Z])/g, '$1 $2');
}
