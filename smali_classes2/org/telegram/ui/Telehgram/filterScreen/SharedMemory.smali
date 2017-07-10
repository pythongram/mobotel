.class public Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# instance fields
.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "SCREEN_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method public static getColor(IIII)I
    .registers 10
    .param p0, "alpha"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 51
    const-string v2, "%02x%02x%02x%02x"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "hex":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 53
    .local v0, "color":I
    return v0
.end method


# virtual methods
.method getAlpha()I
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "alpha"

    const/16 v2, 0x33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getBlue()I
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "blue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getColor()I
    .registers 7

    .prologue
    .line 57
    const-string v2, "%02x%02x%02x%02x"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getAlpha()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getRed()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getGreen()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->getBlue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "hex":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 59
    .local v0, "color":I
    return v0
.end method

.method getGreen()I
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "green"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getRed()I
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "red"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method setAlpha(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alpha"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method setBlue(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method

.method setGreen(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "green"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    return-void
.end method

.method setRed(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/filterScreen/SharedMemory;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "red"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method
