using Test, QuantumClifford

@testset "Single Qubit Noise" begin
    ϵ = 0.1 
    dephasing = DephasingNoise(ϵ)

    noisy_gate = NoisyGate(SparseGate(tX,[2]),noise)
    noises = [NoiseOp(noise,[2]),NoiseOpAll(noise)]
    
    new_noise = QuantumClifford.UncorrelatedNoise([0.1])
    

end

@testset "New Noise" begin
   ϵ = 0.1 
   noise = UnbiasedUncorrelatedNoise(ϵ)
   noisy_gate = NoisyGate(SparseGate(tCNOT,[2,3]),noise)
   noises = [NoiseOp(noise,[2,3]),NoiseOpAll(noise)]

   new_noise = QuantumClifford.UncorrelatedNoise([0.1,0.1,0.1])
end