.class Landroid/graphics/drawable/Drawable$Injector;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareStateSet(Landroid/graphics/drawable/Drawable;[I)Z
    .locals 7
    .parameter "d"
    .parameter "stateSet"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 132
    .local v0, drawableStateSet:[I
    if-ne p1, v0, :cond_1

    move v3, v4

    .line 152
    :cond_0
    :goto_0
    return v3

    .line 136
    :cond_1
    if-nez p1, :cond_3

    .line 137
    array-length v5, v0

    if-eqz v5, :cond_2

    aget v5, v0, v3

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 140
    :cond_3
    array-length v5, p1

    array-length v6, v0

    if-le v5, v6, :cond_4

    .line 141
    array-length v5, v0

    array-length v6, p1

    add-int/2addr v5, v6

    new-array v2, v5, [I

    .line 142
    .local v2, newStates:[I
    array-length v5, v0

    invoke-static {v0, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object v0, v2

    .line 144
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setStateInternal([I)V

    .line 147
    .end local v2           #newStates:[I
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_5

    .line 148
    aget v5, p1, v1

    aget v6, v0, v1

    if-ne v5, v6, :cond_0

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_5
    array-length v5, v0

    array-length v6, p1

    if-eq v5, v6, :cond_6

    array-length v5, p1

    aget v5, v0, v5

    if-nez v5, :cond_0

    :cond_6
    move v3, v4

    goto :goto_0
.end method

.method static copyStateSet(Landroid/graphics/drawable/Drawable;[I)V
    .locals 4
    .parameter "d"
    .parameter "stateSet"

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 158
    .local v0, drawableStateSet:[I
    if-nez p1, :cond_0

    .line 159
    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v1, p1

    array-length v2, v0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method static miuiSetState(Landroid/graphics/drawable/Drawable;[I)Z
    .locals 1
    .parameter "d"
    .parameter "stateSet"

    .prologue
    .line 123
    invoke-static {p0, p1}, Landroid/graphics/drawable/Drawable$Injector;->compareStateSet(Landroid/graphics/drawable/Drawable;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {p0, p1}, Landroid/graphics/drawable/Drawable$Injector;->copyStateSet(Landroid/graphics/drawable/Drawable;[I)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
