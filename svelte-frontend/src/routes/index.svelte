<script context="module" lang="ts">
    interface Idea {
        id: number,
        ideaName: string,
        anticipatedOutcomes: string,
        situation: string,
        proposedSolution: string,
        stepsInvolved: string,
        benefitsWho: string,
        potentialObstacles: string,
        research: string,
        dateCreated: Date,
        lastUpdated: Date
    }
    
    interface getResponseIdeas {
        _embedded: {
            ideas: Idea[]
        }
    }
    export async function load({ fetch }) {
        const res = await fetch('http://localhost:8080/api/ideas')
        const data: getResponseIdeas = await res.json()

        if (res.ok) {
            return {
                props: {ideas: data._embedded.ideas}
            }
        }
        return {
            status: res.status,
            error: new Error('Could not fetch ideas')
        }
    }
</script>

<script>
    export let ideas;
</script>

<div class="container mx-auto px-4">
    <div class="grid grid-cols-1 md:grid-cols-5 gap-2 md:gap-4">
        <div class="md:col-span-2">
            <h2 class="text-4xl text-left md:text-center border-b border-gray-800">Newest Ideas</h2>
            {#if ideas.length === 0}
                <p>No ideas are here... yet.</p>
            {:else }
                <ul class="">
                    {#each ideas as idea (idea.id)}
                        <li>
                            <h4>{idea.ideaName}</h4>
                            <p>{idea.situation}</p>
                        </li>
                    {/each}
                </ul>
            {/if}
        </div>
        <div class="md:col-span-3">
            <h1 class="text-4xl text-left md:text-center border-b border-gray-800">Idea Incubator Guidelines</h1>
            <p>
                The SAPL Idea Incubator is a pilot project to help staff get their ideas implemented. This is a place
                to not only get support for an idea but a place to help grow and develop ideas. Ideas can be big or small,
                from something that affects your location to something that affects the organization as a whole. We are looking
                for ideas to enhance the customer experience, to improve business process, and to promote staff success.
                Our goal is to help you get to yes and to help you formulate an actionable plan.
            </p>
            <p class="my-6">
                The purpose of the Incubator is:
            </p>
            <ul class="list-disc">
                <li>To aid staff in submitting well thought out proposals to their supervisors.</li>
                <li>To aid supervisors in helping staff to develop ideas.</li>
                <li>To share ideas within the organization and to implement system wide change.</li>
                <li>To empower supervisors to make decisions.</li>
                <li>To empower employees and supervisors to implement ideas autonomously.</li>
                <li>To keep track of all of the great ideas being implemented.</li>
            </ul>
            <p class="my-6">
                Process:
            </p>
            <ol class="list-decimal">
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
            <p class="mt-6">We know SAPL staff are innovative, and we want everyone to see the great ideas out there.</p>
            <p>
                While not all ideas can be implemented due to complexities (such as changes to policies) and resources (budget),
                all ideas will be considered and Administration will provide reasons when an idea cannot be pursued. Some of these
                types of ideas may also be considered as a part of a competitive process.
            </p>
            <p>The Idea Incubator is in itself a project that will grow and change as it develops so be on the lookout for updates.</p>
            <p>If you have any questions, please contact: MAINCONTACTPERSON</p>
            <!-- Buttons -->
            <div class="my-8">
                <button class="inline-flex items-center bg-gray-800 border-0 py-1 px-3 focus:outline-none hover:bg-gray-700 text-gray-400 rounded text-base mt-4 md:mt-0 mr-1">Submit your Idea!</button>
                <button class="inline-flex items-center bg-yellow-800 border-0 py-1 px-3 focus:outline-none hover:bg-yellow-700 text-white rounded text-base mt-4 md:mt-0 mr-1">View all Ideas</button>
                <button class="inline-flex items-center bg-green-800 border-0 py-1 px-3 focus:outline-none hover:bg-green-700 text-white rounded text-base mt-4 md:mt-0">Process Map</button>
            </div>
        </div>
    </div>
</div>