.class public Lorg/telegram/ui/Telehgram/Turbo;
.super Ljava/lang/Object;
.source "Turbo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/Turbo$Chat;
    }
.end annotation


# static fields
.field public static categorizeProfile:Z

.field public static copySender:Z

.field public static directBot:Z

.field public static directChannel:Z

.field public static directContact:Z

.field public static directGroup:Z

.field public static favoriteMessages:Z

.field public static ghostMode:Z

.field public static hideTyping:Z

.field public static preferences:Landroid/content/SharedPreferences;

.field public static saveInProfileNotQuote:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    .line 17
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "copySender"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->copySender:Z

    .line 18
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fm_notquot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->saveInProfileNotQuote:Z

    .line 19
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "cp_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->categorizeProfile:Z

    .line 20
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fm_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->favoriteMessages:Z

    .line 22
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_contact"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directContact:Z

    .line 23
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_group"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directGroup:Z

    .line 24
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_channel"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directChannel:Z

    .line 25
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_bot"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directBot:Z

    .line 27
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hide_typing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->hideTyping:Z

    .line 28
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ghost_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->ghostMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containValue(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pref"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeValue(Ljava/lang/String;)V
    .registers 2
    .param p0, "pref"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public static setBooleanValue(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "pref"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 31
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    invoke-static {}, Lorg/telegram/ui/Telehgram/Turbo;->updatePreferences()V

    .line 33
    return-void
.end method

.method public static setIntValue(Ljava/lang/String;I)V
    .registers 3
    .param p0, "pref"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 36
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    invoke-static {}, Lorg/telegram/ui/Telehgram/Turbo;->updatePreferences()V

    .line 38
    return-void
.end method

.method public static setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "pref"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    invoke-static {}, Lorg/telegram/ui/Telehgram/Turbo;->updatePreferences()V

    .line 43
    return-void
.end method

.method private static updatePreferences()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fm_notquot"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->saveInProfileNotQuote:Z

    .line 55
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "cp_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->categorizeProfile:Z

    .line 56
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fm_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->favoriteMessages:Z

    .line 58
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_contact"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directContact:Z

    .line 59
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_group"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directGroup:Z

    .line 60
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_channel"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directChannel:Z

    .line 61
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "direct_bot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->directBot:Z

    .line 62
    sget-object v0, Lorg/telegram/ui/Telehgram/Turbo;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "copySender"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->copySender:Z

    .line 63
    return-void
.end method
