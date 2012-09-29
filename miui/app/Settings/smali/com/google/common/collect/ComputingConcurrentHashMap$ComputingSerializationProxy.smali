.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "ComputingConcurrentHashMap.java"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lcom/google/common/base/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/o;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/o;Ljava/util/concurrent/ConcurrentMap;)V

    .line 429
    iput-object p13, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lcom/google/common/base/l;

    .line 430
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 440
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->a(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lcom/google/common/base/l;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/l;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->Fk:Ljava/util/concurrent/ConcurrentMap;

    .line 442
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->b(Ljava/io/ObjectInputStream;)V

    .line 443
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 434
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->a(Ljava/io/ObjectOutputStream;)V

    .line 435
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->Fk:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
