.class Lcom/android/settings/vpn2/c;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field final key:Ljava/lang/String;

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field routes:Ljava/lang/String;

.field type:I

.field ye:Ljava/lang/String;

.field yf:Ljava/lang/String;

.field yg:Ljava/lang/String;

.field yh:Ljava/lang/String;

.field yi:Z

.field yj:Ljava/lang/String;

.field yk:Ljava/lang/String;

.field yl:Ljava/lang/String;

.field ym:Ljava/lang/String;

.field yn:Ljava/lang/String;

.field yo:Ljava/lang/String;

.field yp:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/android/settings/vpn2/c;->type:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->ye:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yf:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yg:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yh:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/c;->yi:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yj:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yk:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yl:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->ym:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yn:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->yo:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/vpn2/c;->yp:Z

    .line 60
    iput-object p1, p0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static a(Ljava/lang/String;[B)Lcom/android/settings/vpn2/c;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v6, 0xe

    const/4 v0, 0x0

    .line 65
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "\u0000"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 71
    array-length v1, v4

    if-lt v1, v6, :cond_0

    array-length v1, v4

    const/16 v5, 0xf

    if-gt v1, v5, :cond_0

    .line 75
    new-instance v1, Lcom/android/settings/vpn2/c;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/c;-><init>(Ljava/lang/String;)V

    .line 76
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    .line 77
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/android/settings/vpn2/c;->type:I

    .line 78
    iget v5, v1, Lcom/android/settings/vpn2/c;->type:I

    if-ltz v5, :cond_0

    iget v5, v1, Lcom/android/settings/vpn2/c;->type:I

    if-gt v5, v7, :cond_0

    .line 81
    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->ye:Ljava/lang/String;

    .line 82
    const/4 v5, 0x3

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yf:Ljava/lang/String;

    .line 83
    const/4 v5, 0x4

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    .line 84
    const/4 v5, 0x5

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yg:Ljava/lang/String;

    .line 85
    const/4 v5, 0x6

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yh:Ljava/lang/String;

    .line 86
    const/4 v5, 0x7

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    .line 87
    const/16 v5, 0x8

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/settings/vpn2/c;->yi:Z

    .line 88
    const/16 v5, 0x9

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yj:Ljava/lang/String;

    .line 89
    const/16 v5, 0xa

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yk:Ljava/lang/String;

    .line 90
    const/16 v5, 0xb

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yl:Ljava/lang/String;

    .line 91
    const/16 v5, 0xc

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->ym:Ljava/lang/String;

    .line 92
    const/16 v5, 0xd

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/android/settings/vpn2/c;->yn:Ljava/lang/String;

    .line 93
    array-length v5, v4

    if-le v5, v6, :cond_4

    const/16 v5, 0xe

    aget-object v4, v4, v5

    :goto_1
    iput-object v4, v1, Lcom/android/settings/vpn2/c;->yo:Ljava/lang/String;

    .line 95
    iget-object v4, v1, Lcom/android/settings/vpn2/c;->yf:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, v1, Lcom/android/settings/vpn2/c;->yp:Z

    move-object v0, v1

    .line 96
    goto/16 :goto_0

    .line 93
    :cond_4
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method gt()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/vpn2/c;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->ye:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/c;->yp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/c;->yf:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/c;->yp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yh:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/vpn2/c;->yi:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->ym:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->yo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
