.class public Lcom/google/common/base/c;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"


# static fields
.field private static final la:Ljava/lang/reflect/Method;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final lb:Z

.field final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-class v0, Lcom/google/common/base/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/c;->logger:Ljava/util/logging/Logger;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/base/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/common/base/b;

    invoke-direct {v2}, Lcom/google/common/base/b;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/common/base/d;

    invoke-direct {v2}, Lcom/google/common/base/d;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/common/base/j;

    invoke-direct {v2}, Lcom/google/common/base/j;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/c;->a([Lcom/google/common/base/h;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/c;->la:Ljava/lang/reflect/Method;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    :try_start_0
    sget-object v0, Lcom/google/common/base/c;->la:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Lcom/google/common/base/f;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 138
    :goto_0
    iput-object v1, p0, Lcom/google/common/base/c;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 139
    iput-boolean v0, p0, Lcom/google/common/base/c;->lb:Z

    .line 140
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    sget-object v1, Lcom/google/common/base/c;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method private static varargs a([Lcom/google/common/base/h;)Ljava/lang/Class;
    .locals 3
    .parameter

    .prologue
    .line 175
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 176
    invoke-interface {v2}, Lcom/google/common/base/h;->V()Ljava/lang/Class;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_0

    .line 178
    return-object v2

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter

    .prologue
    .line 309
    :try_start_0
    const-string v0, "startFinalizer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static synthetic cJ()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/common/base/c;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method r()V
    .locals 4

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/common/base/c;->lb:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    return-void

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/c;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 161
    :try_start_0
    check-cast v0, Lcom/google/common/base/f;

    invoke-interface {v0}, Lcom/google/common/base/f;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lcom/google/common/base/c;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error cleaning up after reference."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
