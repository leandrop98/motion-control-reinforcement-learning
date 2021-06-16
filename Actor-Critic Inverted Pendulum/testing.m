n_iterations = 1000;
 

%%test using the policy
state.pos = pi;
state.vel = 0;
% total_accumulated_reward = zeros(n_episodes,1);
for i=1:n_iterations
   %fprintf('Testing - Episode %d - Iteration %d\n ',n,  i);
   [action,index] = select_action_policy(Q_estim,state); %should i delete the randomness?«, right?
   [new_state, reward] = perform_action(state, action);
   %update current state
   state = new_state;
   plot_pendulum(new_state.pos);

end

%%Questions
%Start n with 0 or 1?
%What happens when the velocity is higher than 2pi or -2pi?
%should i delete the randomness for the test, right?
%what are the initial values for variance and Q values after split?
