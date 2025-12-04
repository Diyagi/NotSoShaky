ModName, ModVersion = "Not So Shaky", "1.0.1"

LoopAsync(1000, function()
    local camShake = StaticFindObject("/Game/SurvivalGameKitV2/Blueprints/Other/CameraShake/PlayerHitCamShake.Default__PlayerHitCamShake_C")
    if not camShake:IsValid() then return false end
    
    ExecuteWithDelay(2000, function()
        ExecuteInGameThread(function()
            camShake.ShakeScale = 1.0
            camShake.OscillationDuration = 0.2
            camShake.OscillationBlendInTime = 0.02
            camShake.OscillationBlendOutTime = 0.08
            
            camShake.RotOscillation = {
                Pitch = {
                    Amplitude = 1.5,
                    Frequency = 12.0,
                    InitialOffset = 1,
                    Waveform = 0
                },
                Yaw = {
                    Amplitude = 1.3,
                    Frequency = 10.0,
                    InitialOffset = 1,
                    Waveform = 0
                },
                Roll = {
                    Amplitude = 1.5,
                    Frequency = 15.0,
                    InitialOffset = 1,
                    Waveform = 0
                }
            }
            
            camShake.LocOscillation = {
                X = {
                    Amplitude = 1.2,
                    Frequency = 3.0,
                    InitialOffset = 1,
                    Waveform = 0
                },
                Y = {
                    Amplitude = 1.8,
                    Frequency = 4.0,
                    InitialOffset = 1,
                    Waveform = 0
                },
                Z = {
                    Amplitude = 1.8,
                    Frequency = 3.0,
                    InitialOffset = 1,
                    Waveform = 0
                }
            }
            
            camShake.FOVOscillation = {
                Amplitude = 0.0,
                Frequency = 0.0,
                InitialOffset = 0,
                Waveform = 0
            }
            
            camShake.AnimPlayRate = 1.0
            camShake.AnimScale = 1.0
            camShake.AnimBlendInTime = 0.0
            camShake.AnimBlendOutTime = 0.05

            print("Painkiller is active!")
        end)
    end)
    
    return true
end)
