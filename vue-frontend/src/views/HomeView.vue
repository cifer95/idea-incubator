<script setup lang="ts">
import {onMounted, ref} from "vue";

const baseUrl = 'http://localhost:8080/api/ideas'

const data = ref([])
const loadingState = ref(null)

onMounted(() => {
  fetchData()
})

const fetchData = () => {
  loadingState.value = 'loading'
  return fetch(baseUrl)
      .then(response => {
        loadingState.value = 'success'
        data.value = response.json()
        console.log(data)
      })
}
</script>

<template>
  <!-- TODO: This is a MVP layout, components and the like will be extracted, styles will be created. Don't want a huge Vue SFC. -->
  <!-- top image -->
  <img class="center" src="https://source.unsplash.com/1200x300/?birds" alt="placeholder image" />

  <hr/>

  <div class="grid">
    <aside>
      <div class="text-center">
        <h2>Newest Ideas</h2>
      </div>
    </aside>

    <section id="guidelines">
      <div class="text-center">
        <h2>Idea Incubator Guidelines</h2>
      </div>
      <p>
        The SAPL Idea Incubator is a pilot project to help staff get their ideas implemented. This is a place
        to not only get support for an idea but a place to help grow and develop ideas. Ideas can be big or small,
        from something that affects your location to something that affects the organization as a whole. We are looking
        for ideas to enhance the customer experience, to improve business process, and to promote staff success.
        Our goal is to help you get to yes and to help you formulate an actionable plan.
      </p>
      <p>
        The purpose of the Incubator is:
      </p>
      <ul>
        <li>To aid staff in submitting well thought out proposals to their supervisors.</li>
        <li>To aid supervisors in helping staff to develop ideas.</li>
        <li>To share ideas within the organization and to implement system wide change.</li>
        <li>To empower supervisors to make decisions.</li>
        <li>To empower employees and supervisors to implement ideas autonomously.</li>
        <li>To keep track of all of the great ideas being implemented.</li>
      </ul>
      <p>
        Process:
      </p>
      <ol>
        <li>Submit a proposal and let your supervisor know.</li>
        <li>Your idea will be posted for all staff to see and for you to track progress.</li>
        <li>Set up a meeting with your supervisor to discuss the proposal.</li>
        <li>
          Your supervisor will work with you to decide if the idea can be implemented right away, if it can be
          implemented with revisions, or whether additional resources and input are needed.
        </li>
        <li>In the case of necessary revision, you will work with your supervisor to update the proposal.</li>
        <li>If additional questions need to be answered, your supervisor will work with the appropriate management team member.</li>
        <li>Your supervisor will engage the appropriate member of Administration if the idea affects more than your immediate team</li>
      </ol>
      <p>We know SAPL staff are innovative, and we want everyone to see the great ideas out there.</p>
      <p>
        While not all ideas can be implemented due to complexities (such as changes to policies) and resources (budget),
        all ideas will be considered and Administration will provide reasons when an idea cannot be pursued. Some of these
        types of ideas may also be considered as a part of a competitive process.
      </p>
      <p>The Idea Incubator is in itself a project that will grow and change as it develops so be on the lookout for updates.</p>
      <p>If you have any questions, please contact: MAINCONTACTPERSON</p>
      <!-- Buttons -->
      <button style="margin-right:10px">Submit your Idea!</button>
      <button style="margin-right:10px">View all Ideas</button>
      <button>Process Map</button>
    </section>
  </div>
</template>

<style>
.text-center {
  text-align: center;
}

.grid {
  display: grid;
  grid-template-areas: 'newestideas newestideas guidelines guidelines guidelines';
  grid-template-columns: 350px 1fr;
}

.grid > aside {
  grid-area: newestideas;
  border-right: 1px solid #000;
}

.grid > #guidelines {
  grid-area: guidelines;
  margin-left: 2em;
}

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
