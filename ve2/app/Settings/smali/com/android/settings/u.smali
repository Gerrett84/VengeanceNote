.class final Lcom/android/settings/u;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final aU:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/u;->aU:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/aN;Lcom/android/settings/aN;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/u;->aU:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/aN;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/aN;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    check-cast p1, Lcom/android/settings/aN;

    check-cast p2, Lcom/android/settings/aN;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/u;->a(Lcom/android/settings/aN;Lcom/android/settings/aN;)I

    move-result v0

    return v0
.end method
