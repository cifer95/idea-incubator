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

<div class="grid grid-cols-5 gap-4">
    <div class="col-span-2">
        <h2 class="text-center">Newest Ideas</h2>
        {#if ideas.length === 0}
            <p>No ideas are here... yet.</p>
        {:else }
            <ul class="">
                {#each ideas as idea}
                    <li>
                        <h4>{idea.ideaName}</h4>
                        <p>{idea.situation}</p>
                    </li>
                {/each}
            </ul>
        {/if}
    </div>
    <div class="col-span-3">
        <h1 class="text-center">Idea Incubator Guidelines</h1>
    </div>
</div>
