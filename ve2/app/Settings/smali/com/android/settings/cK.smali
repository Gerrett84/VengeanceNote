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
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/settings/cK;->key:Ljava/lang/String;

    .line 146
    iput p2, p0, Lcom/android/settings/cK;->Gz:I

    .line 147
    iput p3, p0, Lcom/android/settings/cK;->GA:I

    .line 148
    iput p4, p0, Lcom/android/settings/cK;->GB:I

    .line 149
    iput p5, p0, Lcom/android/settings/cK;->GC:I

    .line 150
    iput-boolean p6, p0, Lcom/android/settings/cK;->GD:Z

    .line 151
    return-void
.end method
