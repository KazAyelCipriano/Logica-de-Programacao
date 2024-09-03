def timsort(alist):
  """
  Ordena a lista usando o algoritmo Timsort.

  Args:
    alist: A lista a ser ordenada.

  Returns:
    A lista ordenada.
  """

  n = len(alist)

  # Se a lista for muito pequena, use o insertion sort.

  if n < 64:
    return insertion_sort(alist)

  # Divida a lista em runs de tamanho 32.

  runs = []
  i = 0
  while i < n:
    runs.append(alist[i:i + 32])
    i += 32

  # Ordene cada run usando o insertion sort.

  for run in runs:
    insertion_sort(run)

  # Mescle os runs usando o algoritmo de merge sort modificado.

  while len(runs) > 1:
    run1 = runs.pop(0)
    run2 = runs.pop(0)

    merged = merge_runs(run1, run2)
    runs.append(merged)

  return runs[0]

def insertion_sort(alist):
  """
  Ordena a lista usando o algoritmo de insertion sort.

  Args:
    alist: A lista a ser ordenada.

  Returns:
    A lista ordenada.
  """

  for i in range(1, len(alist)):
    j = i
    while j > 0 and alist[j - 1] > alist[j]:
      alist[j], alist[j - 1] = alist[j - 1], alist[j]
      j -= 1

  return alist

def merge_runs(run1, run2):
  """
  Mescla dois runs usando o algoritmo de merge sort modificado.

  Args:
    run1: O primeiro run.
    run2: O segundo run.

  Returns:
    Um novo run que é a mesclagem de run1 e run2.
  """

  result = []
  i = 0
  j = 0
  while i < len(run1) and j < len(run2):
    if run1[i] <= run2[j]:
      result.append(run1[i])
      i += 1
    else:
      result.append(run2[j])
      j += 1

  result += run1[i:]
  result += run2[j:]

  return result