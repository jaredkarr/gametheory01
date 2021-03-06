
close all;
% Follower's Game

NUM_PLAYERS = 5;
%A = randi([0 1], NUM_PLAYERS, NUM_PLAYERS);
%A = A.*(eye(NUM_PLAYERS)==0);
% TODO: initialise A using initialAction()?
A = initialAction(NUM_PLAYERS, 0.1);

score = zeros(NUM_PLAYERS,1);
cost = 1; % cost
beta = 1;

NUM_ITER = 5;

% TODO: Put all strategies (function handles) in a cell array (or smth) 


for i = 1 : NUM_ITER
    pL = pathLength(A);
    % TODO: iterate game using iterateGame()?
    score = utility(A, pL, beta, cost);
end
U = score;
A
U

% Sample test code
S = [1 2 1 2 1]
actionCount = NUM_PLAYERS;
imitationEpoch = NUM_PLAYERS;
[S, A, U, SHistory, AHistory, UHistory] = iterateGame(S, A, pL, U, actionCount, imitationEpoch);

plot(digraph(A))

