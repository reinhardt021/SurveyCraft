<script>
  export let surveyName;
  export let question;
</script>

<style>
  h1 {
    color: #800080;
  }

  .question {
    margin-bottom: 1em;
  }
</style>

<h1>Hello {surveyName}!</h1>
<form>
    <div class="question">
        <span>
            <input type=text placeholder="What is your question"/> ?
        </span>
    </div>
    <div>
        <textarea placeholder="Answer..." disabled={question !== ''}>
        </textarea>
    </div>
</form>
