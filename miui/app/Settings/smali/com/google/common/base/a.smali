.class final Lcom/google/common/base/a;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final kI:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/base/e;

    invoke-direct {v0}, Lcom/google/common/base/e;-><init>()V

    sput-object v0, Lcom/google/common/base/a;->kI:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cn()J
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
