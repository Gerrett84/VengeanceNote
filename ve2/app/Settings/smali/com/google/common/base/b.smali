.class public abstract Lcom/google/common/base/b;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final nW:Lcom/google/common/base/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/base/k;

    invoke-direct {v0}, Lcom/google/common/base/k;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->nW:Lcom/google/common/base/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dy()Lcom/google/common/base/b;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/common/base/b;->nW:Lcom/google/common/base/b;

    return-object v0
.end method


# virtual methods
.method public abstract dx()J
.end method
