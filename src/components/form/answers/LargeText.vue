<template>
  <v-row>
    <v-col>
      <span class="text-subtitle-1 font-weight-bold">
        {{ question.title }}
        <span style="color: red">{{ question.required ? '*' : '' }}</span>
      </span>

      <v-textarea
        v-model="question.response"
        :counter="question.max_char"
        :maxlength="question.max_char"
        :rules="[rules.required]"
        label="Sua Resposta"
        class="mt-2"
        dense
        outlined
        auto-grow
        :clearable="canEdit"
        :readonly="!canEdit"
        :disabled="!canEdit"
      />
    </v-col>
  </v-row>
</template>

<script>
  import rules from '@/mixins/questionRules';

  export default {
    name: 'LargeText',
    props: {
      question: {
        type: Object,
        required: true,
      },
      canEdit: {
        type: Boolean,
        default: true,
      },
    },
    mixins: [rules],
  };
</script>

<style></style>
