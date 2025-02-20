export function toSnakeCase(sourceString) {
  return sourceString.toLowerCase().replace(/[^0-9a-z]+/g, '_').replace(/_+$/g, '');
}