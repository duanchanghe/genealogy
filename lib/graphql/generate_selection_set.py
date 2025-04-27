def generate_selection_set(field, depth=0, indent="  "):
    """
    Generates a selection set for a field, handling different types recursively.
    """
    if depth > 3:  # Limit recursion depth
        return "{\n" + indent * (depth + 1) + "# ... (recursion limit reached) ...\n" + indent * depth + "}"

    field_type = field['type']
    kind = field_type['kind']
    name = field_type['name']
    ofType = field_type.get('ofType')

    if kind == 'SCALAR' or name in ['Int', 'String', 'Boolean', 'Float', 'ID']:
        return ""  # No selection set for scalar types

    if kind == 'LIST':
        if ofType:
            return generate_selection_set({'type': ofType}, depth, indent)
        else:
            return "{\n" + indent * (depth + 1) + "# ... (List of unknown type) ...\n" + indent * depth + "}"

    if kind == 'OBJECT':
        # Find the type definition in the schema
        object_type = None
        for t in data['__schema']['types']:
            if t['name'] == name:
                object_type = t
                break

        if not object_type:
            return "{\n" + indent * (depth + 1) + "# ... (Type definition not found) ...\n" + indent * depth + "}"

        selection = "{\n"
        for f in object_type['fields']:
            selection += indent * (depth + 1) + f['name'] + " " + generate_selection_set(f, depth + 1, indent) + "\n"
        selection += indent * depth + "}"
        return selection

    return "{\n" + indent * (depth + 1) + "# ... (Unhandled type kind: " + str(kind) + ") ...\n" + indent * depth + "}"
