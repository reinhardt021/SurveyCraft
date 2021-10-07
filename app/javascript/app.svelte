<script>
  export let name;
  export let question;
</script>

<style>
  h1 {
    color: #5f0087;
  }

  .question {
    margin-bottom: 1em;
  }
</style>

<h1>Survey: {name}</h1>
<form>
    <div class="question">
        <span>
            <input type=text placeholder="What is your question"/> ?
        </span>
    </div>
    <div>
        <textarea  disabled={question !== ''} placeholder="Answer...">
        </textarea>
    </div>
</form>
