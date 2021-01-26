clear;
notename = {'A' 'A#' 'B' 'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#' ' '};
track_no = 2;
dur = round(60/100*4096)*2;

% {XX, t}
% If t == -1, XX is the speed
% If t != -1, XX is a cell {{C, R(, T)},...}, C in notename, R is the
% 'range'. If T exist, it should be smaller than t (for Arpeggio).


song = cell(track_no, 3);
song{1,1} = {{100, -1},{{{' ', 0}},4}, ...
    {{{'C#', -1}},0.5}, {{{'D#', -1}},0.5}, {{{'F', -1}},0.5}, {{{'C', 0}}, 1.5}, {{{'G#', -1}},1},...
    {{{'C', -1},{'D#', -1},{'G', -1},{'B', 0}},1}, {{{' ', 0}},0.5}, {{{'C', -1},{'D#',-1},{'F', -1},{'G#', -1}},2}, {{{'C', -1}},0.5},...
    {{{'C#', -1}},0.5}, {{{'D#', -1}},0.5}, {{{'F', -1}},0.5}, {{{'C', 0}}, 1}, {{{'G#', -1}},1}, {{{'F', -1}},0.5},...
    {{{'C', -1},{'D#', -1},{'G', -1},{'B', 0}},0.75}, {{{'C', -1},{'D#', -1},{'G', -1},{'B', 0}},0.25},{{{' ', 0}},0.5}, {{{'D#', -1},{'F', -1},{'B', 0},{'C', 0}},2}, {{{'C', 0}},0.5},...
    {{{'C#', 0}},0.5},{{{'D#', 0}},0.5},{{{'F', 0}},0.5},{{{'C', 1}},1},{{{'G#', 0}},1},{{{'F', 0}},0.5},...
    {{{'C', 0},{'D#', 0},{'G', 0},{'A#', 1}},1},{{{' ', 0}},0.5},{{{'C', 0},{'D#', 0},{'F', 0},{'G#', 0}},2},{{{'C', 0}},0.5},...
    {{{'C#', 0}},0.5},{{{'D#', 0}},0.5},{{{'F', 0}},0.5},{{{'C', 1}},1},{{{'G#', 0}},1},{{{'F', 0}},0.5},...
    {{{'C', 0},{'D#', 0},{'G', 0},{'A#', 1}},0.75},{{{'C', 0},{'D#', 0},{'G', 0},{'A#', 1}},0.25},{{{' ', 0}},0.5},{{{'D#', 0},{'F', 0},{'G#', 0},{'C', 1}},2},{{{'C', 0}},0.5},...
    {{{'C#', 0}},0.5},{{{'D#', 0}},0.5},{{{'F',0}},0.5},{{{'C', 1}},1},{{{'G#', 0}},1},{{{'F', 0}},0.5},...
    {{{'C', 0},{'D#', 0},{'G', 0},{'A#', 1}},1},{{{' ', 0}},0.5},{{{'C', 0},{'D#', 0},{'F', 0},{'G#', 0}},1},{{{'G#', 0}},0.5},{{{'A#', 1}},0.5},{{{'C', 1}},0.5},...
    {{{'C', 1}},1.5},{{{'G#', 0}},0.5},{{{'G#', 0}},1.5},{{{'F', 0}},0.5},...
    {{{'F', -1},{'G#', -1},{'C', 0},{'D#', 0}},2},{{{'D#', -1},{'G', -1},{'C', 0}},2},...
    {80, -1},...
    {{{'F', 0}},1},{{{'C', 0}},0.75},{{{'A#', 0}},2.25},...
    {{{'D#', 0}},1},{{{'A#', 0}},0.75},{{{'G#', -1}},1.25},{{{'A#', 0}},0.5},{{{'C', 0}},0.5},...
    {{{'C#', 0}},1.5},{{{'C', 0}},0.5},{{{'A#', 0}},1},{{{'G#', -1}},1},...
    {{{'C', 0}},4},...
    {{{'F', 0}},1},{{{'C', 0}},0.75},{{{'A#', 0}},2.25},...
    {{{'D#', 0}},1},{{{'A#', 0}}, 0.75},{{{'G#', -1}}, 1.25},{{{'A#', 0}}, 0.5},{{{'C', 0}},0.5},...
    {{{'C#', 0}}, 1.5},{{{'D#', 0}}, 0.5},{{{'C', 0}}, 1},{{{'A#', 0}}, 1},...
    {{{'C', 0}}, 3.5},{{{'G#', -1}}, 0.5},...
    {{{'D#', 0}}, 2},{{{'D#', 0}}, 1},{{{'C#', 0}}, 1},...
    {{{'C', 0}}, 0.5},{{{'C#', 0}}, 0.5},{{{'D#', 0}}, 0.25},{{{'F', 0}}, 0.75},{{{'G#', -1}}, 1.5},{{{'G#', -1}}, 0.5},...
    {{{'D#', 0}}, 2},{{{'D#', 0}}, 1},{{{'C#', 0}}, 1},...
    {{{'C', 0}}, 0.25},{{{'C#', 0}}, 0.5},{{{'D#', 0}}, 1.25},{{{'A#', 0}}, 1},{{{'G#', -1}}, 1},...
    {{{'D#', 0}}, 2},{{{'D#', 0}}, 1},{{{'C#', 0}}, 1},...
    {{{'C', 0}}, 0.5},{{{'C#', 0}}, 0.5},{{{'D#', 0}}, 0.5},{{{'F', 0}}, 2},{{{'G#', 0}}, 1},... Half beat excess
    {{{'G#', 0}}, 0.5},{{{'F#', 0}}, 0.5},{{{'F', 0}}, 0.5},{{{'E', 0}}, 0.5},{{{'D#', 0}}, 0.5},{{{'C#', 0}}, 0.5},{{{'D#', 0}}, 0.5},...
    {{{'D#', 0}}, 3},  {{{' ', 0}}, 1},{{{'C', 0}}, 1},... % Repeat start
    {{{'C#', 0}}, 0.5},{{{'D#', 0}}, 0.5},{{{'F', 0}}, 0.5},{{{'C', 1}}, 1.5}, {{{'A#', 1}}, 0.5}, {{{'G#', 0}}, 0.5},...
    {{{'D#', 0}, {'G', 0}, {'A#', 1}}, 1}, {{{'G', 0}, {'A#', 1}}, 0.5}, {{{'F', 0}, {'G#', 0}}, 2}, {{{'C', 0}}, 0.5},...
    {{{'C#', 0}}, 0.5}, {{{'D#', 0}}, 0.5}, {{{'F', 0}}, 0.5}, {{{'C', 1}}, 1.5}, {{{'A#', 1}}, 0.5},{{{'G#', 0}}, 0.5},...
    {{{'D#', 0},{'G', 0},{'A#', 1}}, 1}, {{{'G', 0},{'A#', 1}}, 0.5}, {{{'G#', 0},{'C', 1}}, 2}, {{{'C', 0}}, 0.5},...
    {{{'C#', 0}}, 0.5}, {{{'D#', 0}}, 0.5}, {{{'F', 0}}, 0.5}, {{{'C', 1}}, 1.5}, {{{'A#', 1}}, 0.5}, {{{'G#', 0}}, 0.5},...
    {{{'D#', 0},{'G', 0},{'A#', 1}}, 1}, {{{'G', 0},{'A#', 1}}, 0.5}, {{{'F', 0}, {'G#', 0}}, 2}, {{{'G#', 0}}, 0.25}, {{{'A#', 1}}, 0.25},...
    {{{'F', 0}, {'G#', 0}, {'C', 1}}, 3}, {{{'F', 0}, {'G#', 0}, {'C', 1}}, 0.5}, {{{'C#', 0}, {'F', 0}}, 0.5},...
    {{{'C#', 0}, {'F', 0}, {'G#', 0}}, 1}, {{{'D#', 0}, {'G', 0}}, 1}, {{{'D', 0}, {'F', 0}, {'G#', 0}}, 0.5}, {{{'C#', 0}, {'F', 0}, {'A#', 1}}, 1}, {{{'C', 0}}, 0.5},... %Repeat end 1, Repeat start
    {{{'C#', 0}}, 0.5},{{{'D#', 0}}, 0.5},{{{'F', 0}}, 0.5},{{{'C', 1}}, 1.5}, {{{'A#', 1}}, 0.5}, {{{'G#', 0}}, 0.5},...
    {{{'D#', 0}, {'G', 0}, {'A#', 1}}, 1}, {{{'G', 0}, {'A#', 1}}, 0.5}, {{{'F', 0}, {'G#', 0}}, 2}, {{{'C', 0}}, 0.5},...
    {{{'C#', 0}}, 0.5}, {{{'D#', 0}}, 0.5}, {{{'F', 0}}, 0.5}, {{{'C', 1}}, 1.5}, {{{'A#', 1}}, 0.5},{{{'G#', 0}}, 0.5},...
    {{{'D#', 0},{'G', 0},{'A#', 1}}, 1}, {{{'G', 0},{'A#', 1}}, 0.5}, {{{'G#', 0},{'C', 1}}, 2}, {{{'C', 0}}, 0.5},...
    {{{'C#', 0}}, 0.5}, {{{'D#', 0}}, 0.5}, {{{'F', 0}}, 0.5}, {{{'C', 1}}, 1.5}, {{{'A#', 1}}, 0.5}, {{{'G#', 0}}, 0.5},...
    {{{'D#', 0},{'G', 0},{'A#', 1}}, 1}, {{{'G', 0},{'A#', 1}}, 0.5}, {{{'F', 0}, {'G#', 0}}, 2}, {{{'G#', 0}}, 0.25}, {{{'A#', 1}}, 0.25},...
    {{{'F', 0}, {'G#', 0}, {'C', 1}}, 3}, {{{'F', 0}, {'G#', 0}, {'C', 1}}, 0.5}, {{{'C#', 0}, {'F', 0}}, 0.5},...
    {{{'F', 0}, {'G#', 0}, {'C#', 1}}, 1}, {{{'F', 0}, {'G#', 0}, {'C', 1}}, 1}, {{{'F', 0}, {'G#', 0}}, 0.5}, {{{'F', 0}, {'A#', 1}}, 1}, {{{'D#', 0}, {'G#', 0}}, 0.5},... % Repeat end 2
    {{{'D#', 0}, {'G#', 0}}, 2}, {{{' ', 0}}, 5}...
    };
song{1,2} = 2;
song{1,3} = 1;

song{2,1} = {{100, -1},{{{' ', 0}},4},...
    {{{'F', -2},{'G#', -2}},2}, {{{'C', -1}},2} ...
    {{{'A#', -2}},1}, {{{'G', -2}},0.5},{{{'G#', -2}},0.5},{{{' ',0}},1},{{{'G#', -2}},1},...
    {{{'F', -2},{'G#', -2}},2}, {{{'C', -1}},2} ...
    {{{'A#', -2}},1}, {{{'G', -2}},1}, {{{'G#', -2}},1}, {{{'C', -1}}, 1},...
    {{{'C#', -2}},1},{{{' ', 0}},0.5},{{{'C#', -2}},1},{{{'G#', -3}},0.5},{{{'C#', -2}},0.5},{{{'G#', -3}},0.5},...
    {{{'C', -2}},1},{{{' ', 0}},0.5},{{{'F', -3}},1},{{{'F', -2}},0.5},{{{'F', -3}},0.5},{{{'C',-2}},0.5},...
    {{{'A#', -2}},1},{{{'A#', -2}},0.5},{{{' ', 0}},1},{{{'C', -2}},0.5},{{{'C#', -2}},0.5},{{{'C#', -2}},0.5},...
    {{{'C', -2}},1},{{{'C', -2}},0.5},{{{'F', -3}},1},{{{'G', -3}},0.5},{{{'G#', -3}},0.5},{{{'F', -3}},0.5},...
    {{{'C#', -2}},1},{{{' ', 0}},0.5},{{{'C#', -2}},1},{{{'G#', -3}},0.5},{{{'C#', -2}},0.5},{{{'G#', -3}},0.5},...
    {{{'C', -2},{'G', -2}},1},{{{' ', 0}},0.5},{{{'F', -3}},0.5},{{{'F', -2}},0.5},{{{'D#', -2}},0.5},{{{'C#', -2}},0.5},{{{'C', -2}},0.5},...
    {{{'A#', -2}},1},{{{'A#', -2}},0.5},{{{' ', 0}},0.5},{{{'A#', -2}},0.5},{{{'F', -3}},0.5},{{{'C', -2}},0.5},{{{'C#', -2}},0.5},...
    {{{'C#', -2}},2},{{{'C', -2}},1},{{{'A#', -2}},1},...
    {80, -1},...
    {{{'C#', -2}},0.5},{{{'D#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'F', -1}},0.5},{{{'G',-1}},0.5},{{{'G#', -1}},0.5},...
    {{{'F', -2}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'G#', -1}},0.5},...
    {{{'C#', -2}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'C', 0}},0.5},{{{'D#', -2}},0.5},{{{'A#', -1}},0.5},{{{'D#', -1}},0.5},{{{'G', -1}},0.5},...
    {{{'G#', -3}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'G', -1}},0.5},{{{'A#', 0}},0.5},{{{'D#', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -1}},0.5},...
    {{{'C#', -2}},0.5},{{{'D#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'F', -1}},0.5},{{{'G', -1}},0.5},{{{'G#', -1}},0.5},...
    {{{'F', -2}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'G#', -1}},0.5},...
    {{{'G', -2}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'A#', 0}},0.5},{{{'C', -2}},0.5},{{{'E', -1}},0.5},{{{'G', -1}},0.5},{{{'A#', 0}},0.5},...
    {{{'F', -2}}, 0.5},{{{'D#', -1}}, 0.5},{{{'G', -1}}, 0.5},{{{'A#', 0}}, 0.5},{{{'C', 0}}, 2},...
    {{{'C#', -2}},0.5},{{{'C#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'C#', -1}},0.5},{{{'E', -1}},0.5},{{{'G', -1}},0.5},...
    {{{'C', -2}},0.5},{{{'D#', -1}},0.5},{{{'G', -1}},0.5},{{{'A#', 0}},0.5},{{{'F', -2}},0.5},{{{'D#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},...
    {{{'C#', -2}},0.5},{{{'C#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'C#', -1}},0.5},{{{'E', -1}},0.5},{{{'G', -1}},0.5},...
    {{{'C', -2}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'G', -1}},0.5},{{{'F', -2}},0.5},{{{'C', -1}},0.5},{{{'D#', -1}},0.5},{{{'C', -1}},0.5},...
    {{{'C#', -2}},0.5},{{{'C#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},{{{'D#', -2}},0.5},{{{'C#', -1}},0.5},{{{'E', -1}},0.5},{{{'G', -1}},0.5},...
    {{{'C', -2}},0.5},{{{'D#', -1}},0.5},{{{'G', -1}},0.5},{{{'A#', 0}},0.5},{{{'F', -2}},0.5},{{{'D#', -1}},0.5},{{{'F', -1}},0.5},{{{'G#', -1}},0.5},...
    {{{'E', -2}},0.5},{{{'E', -1}},0.5},{{{'F#', -1}},0.5},{{{'G#', -1}},0.5},{{{'B', 0}},2},...
    {{{'A#', -2}}, 0.5},{{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'A#', 0}}, 0.5},{{{'D#', -2},{'A#', -1, 2.875},{'F', -1, 2.75},{'G#', -1, 2.625}},3},... % Repeat start
    {{{'C#', -2}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},{{{'C', 0}}, 0.5},{{{'F', -1}},0.5},{{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},...
    {{{'C', -2}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'F', -3}}, 0.5},{{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'F#', -1}}, 0.5},...
    {{{'A#', -2}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'D#', -2}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5},...
    {{{'G#', -3}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'D', -3}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'F#', -1}}, 0.5},...
    {{{'C#', -2}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'C', 0}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},...
    {{{'C', -2}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'F', -3}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'F#', -1}}, 0.5},...
    {{{'A#', -2}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{' ', 0}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},...
    {{{'D#', -2}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'A#', 0}}, 0.5}, {{{'D', -2}}, 0.5}, {{{'D', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5},... % Repeat end 1, Repeat start
    {{{'C#', -2}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},{{{'C', 0}}, 0.5},{{{'F', -1}},0.5},{{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},...
    {{{'C', -2}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'F', -3}}, 0.5},{{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'F#', -1}}, 0.5},...
    {{{'A#', -2}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'D#', -2}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5},...
    {{{'G#', -3}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'D', -3}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'F#', -1}}, 0.5},...
    {{{'C#', -2}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'C', 0}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},...
    {{{'C', -2}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G', -1}}, 0.5}, {{{'F', -3}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'F#', -1}}, 0.5},...
    {{{'A#', -2}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{' ', 0}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'F', -1}}, 0.5},...
    {{{'A#', -2}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'F', -1}}, 0.5}, {{{'G#', -1}}, 0.5}, {{{'D#', -2}}, 0.5}, {{{'C#', -1}}, 0.5}, {{{'E', -1}}, 0.5}, {{{'G#', -1}}, 0.5}... % Repeat end 2
    {{{'G#', -3}}, 0.5}, {{{'A#', -1}}, 0.5}, {{{'C', -1}}, 0.5}, {{{'D#', -1}}, 0.5}, {{{'G#', -2},{'C', -1, 4.875},{'D#', -1, 4.75},{'G', -1, 4.5}},5}...
    };
song{2,2} = 2;
song{2,3} = 0.5;

songtrack = cell(track_no, 1);

for i = 1:track_no
    songtrack{i} = [];
    for k = 1:length(song{i, 1})
        temp = song{i, 1}{k};
        temp_dur = temp{2}(1);
        if temp_dur == -1
            dur = round(60/temp{1}(1)*4096)*2;
        else
            note = zeros(1, round(temp_dur * dur));
            temp = temp{1};
            n = size(temp);
            n = n(2);
            for j = 1:n
                temp_note = temp{j}{1};
                temp_range = temp{j}{2};
                idx = strcmp(temp_note, notename);
                songidx = find(idx);
                if songidx == 13
                    songidx = -100;
                end
                t = size(temp{j});
                if t(2) == 2
                    note = note + notecreate(songidx + temp_range * 12, round(dur * temp_dur), song{i,2}, song{i,3});
                else
                    note = note + [zeros(1, round(dur * temp_dur)-round(dur * temp{j}{3})), notecreate(songidx + temp_range * 12, round(dur * temp{j}{3}), song{i,2}, song{i,3})];
                end
            end
            songtrack{i} = [songtrack{i}; note'];
        end
    end
end

songnote = zeros(size(songtrack{1}));
for i = 1:track_no
    songnote = songnote + songtrack{i};
end
soundsc(songnote, 8192)
songnote = songnote / max(abs(songnote));
audiowrite('WhiteAlbum.wav', songnote, 8192);