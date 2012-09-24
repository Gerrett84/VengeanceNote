.class Lcom/android/settings/cK;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# instance fields
.field GA:I

.field GB:I

.field GC:I

.field GD:Z

.field Gz:I

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/settings/cK;->key:Ljava/lang/String;

    .line 161
    iput p2, p0, Lcom/android/settings/cK;->Gz:I

    .line 162
    iput p3, p0, Lcom/android/settings/cK;->GA:I

    .line 163
    iput p4, p0, Lcom/android/settings/cK;->GB:I

    .line 164
    iput p5, p0, Lcom/android/settings/cK;->GC:I

    .line 165
    iput-boolean p6, p0, Lcom/android/settings/cK;->GD:Z

    .line 166
    return-void
.end method
