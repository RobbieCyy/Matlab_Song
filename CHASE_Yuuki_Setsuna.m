clear;
notename = {'A' 'A#' 'B' 'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#' ' '};
dur = round(0.4*4096) * 2;

song_1 = { {' ', 0, 3.5}, {'E', -1, 0.5},...
    {'E', 0, 1}, {'D#', 0, 0.5}, {'B', 0, 1}, {'C#', 0, 1}, {'B', 0, 2},...
    {'E', -1, 0.5}, {'E', -1, 1}, {'E', -1, 1},...
    {'F#', -1, 1}, {'G#', -1, 1}, {'B', 0, 1}, {'E', -1, 2},...
    {'F#', -1, 1}, {'G#', -1, 2},...
    {'E', 0, 1}, {'D#', 0, 0.5}, {'B', 0, 1}, {'C#', 0, 1}, {'B', 0, 2.5},...
    {'E', -1, 1}, {'E',-1, 1},...
    {'F#', -1, 1}, {'G#', -1, 1}, {'B', 0, 1}, {'E', -1, 2},...
    {'F#', -1, 1}, {'E', -1, 2},...
    {'E', -1, 1}, {'E', -1, 0.5}, {'E', -1, 1}, {'D#', -1, 1}, {'E', -1, 1.5},...
    {'F#', -1, 1}, {'G#', -1, 1.5}, {'B', -1, 0.5},...
    {'E', -1, 1}, {'E', -1, 0.5}, {'E', -1, 1}, {'B', -1, 1}, {'B', 0, 1.5},...
    {'A', 0, 1}, {'G#', -1, 2},...
    {'E', 0, 1}, {'D#', 0, 0.5}, {'B', 0, 1}, {'C#', 0, 1}, {'B', 0, 2.5},...
    {'B', -1, 1}, {'C#', -1, 1},...
    {'C#', 0, 0.5}, {'C#', 0, 0.5}, {'C#', 0, 0.5}, {'C#', 0, 1}, {'B', 0, 1}, {'C#', 0, 1.5},...
    {'E', 0, 0.5}, {'C#', 0, 3.5}};
song1idx = zeros(3, length(song_1));
for k1 = 1:length(song_1)
    temp = song_1(k1);
    temp = temp{1,1};
    temp_note = temp{1};
    temp_range = temp{2};
    temp_dur = temp{3};
    idx = strcmp(temp_note, notename);
    song1idx(1, k1) = find(idx);
    if song1idx(1, k1) == 13
        song1idx(1, k1) = -100;
    end
    song1idx(2, k1) = temp_range;
    song1idx(3, k1) = temp_dur;
end
songnote_1 = [];
for k1 = 1:length(song1idx)
    songnote_1 = [songnote_1; [notecreate(song1idx(1, k1) + song1idx(2, k1) * 12, round(dur * song1idx(3, k1)) - 75, 4, 1) zeros(1,75)]'];
end

song_2 = { {' ', 0, 4},...
    {'G#', -2, 4}, {'E', -2, 4}, {'F#', -2, 4}, {'B', -1, 4},...
    {'G#', -2, 4}, {'E', -2, 4}, {'F#', -2, 4}, {'B', -1, 4},...
    {'E', -2, 4}, {'E', -2, 4}, {'F#', -2, 4}, {'B', -2, 4},...
    {'C#', -2, 4}, {'D#', -2, 4}, {'G#', -1, 9}};
song2idx = zeros(3, length(song_2));
for k1 = 1:length(song_2)
    temp = song_2(k1);
    temp = temp{1,1};
    temp_note = temp{1};
    temp_range = temp{2};
    temp_dur = temp{3};
    idx = strcmp(temp_note, notename);
    song2idx(1, k1) = find(idx);
    if song2idx(1, k1) == 13
        song2idx(1, k1) = -100;
    end
    song2idx(2, k1) = temp_range;
    song2idx(3, k1) = temp_dur;
end
songnote_2 = [];
for k1 = 1:length(song2idx)
    songnote_2 = [songnote_2; [notecreate(song2idx(1, k1) + song2idx(2, k1) * 12, round(dur * song2idx(3, k1)) - 75, 1, 0.7) zeros(1,75)]'];
end

song_3 = { {' ', 0, 4},...
    {'C#', -2, 4}, {'A', -2, 4}, {'B', -2, 4}, {'E', -2, 4},...
    {'C#', -2, 4}, {'A', -2, 4}, {'B', -2, 4}, {'E', -2, 4},...
    {'A#', -2, 4}, {'A', -2, 4}, {'A#', -2, 4}, {'E', -3, 4},...
    {'F#', -3, 4}, {'G#', -3, 4}, {'C#', -1, 9}};
song3idx = zeros(3, length(song_3));
for k1 = 1:length(song_3)
    temp = song_3(k1);
    temp = temp{1,1};
    temp_note = temp{1};
    temp_range = temp{2};
    temp_dur = temp{3};
    idx = strcmp(temp_note, notename);
    song3idx(1, k1) = find(idx);
    if song3idx(1, k1) == 13
        song3idx(1, k1) = -100;
    end
    song3idx(2, k1) = temp_range;
    song3idx(3, k1) = temp_dur;
end
songnote_3 = [];
for k1 = 1:length(song3idx)
    songnote_3 = [songnote_3; [notecreate(song3idx(1, k1) + song3idx(2, k1) * 12, round(dur * song3idx(3, k1)) - 75, 1, 0.7) zeros(1,75)]'];
end

songnote = songnote_1 + songnote_2 + songnote_3;
soundsc(songnote, 8192)
songnote = songnote / max(abs(songnote));
%audiowrite('CHASE.wav', songnote, 8192);