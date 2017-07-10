.class public Lorg/telegram/ui/Membergram/util/pref/RatePref;
.super Ljava/lang/Object;
.source "RatePref.java"


# static fields
.field private static final App_VIEW_COUNT:Ljava/lang/String; = "APP_VIEW_COUNT"

.field private static final DONT_SHOW_AGAIN:Ljava/lang/String; = "DONT_SHOW_AGAIN"

.field private static final SHARED:Ljava/lang/String; = "RATE"

.field private static ratePref:Lorg/telegram/ui/Membergram/util/pref/RatePref;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "RATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->sharedPref:Landroid/content/SharedPreferences;

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->editor:Landroid/content/SharedPreferences$Editor;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/telegram/ui/Membergram/util/pref/RatePref;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->ratePref:Lorg/telegram/ui/Membergram/util/pref/RatePref;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lorg/telegram/ui/Membergram/util/pref/RatePref;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Membergram/util/pref/RatePref;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->ratePref:Lorg/telegram/ui/Membergram/util/pref/RatePref;

    .line 25
    :cond_b
    sget-object v0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->ratePref:Lorg/telegram/ui/Membergram/util/pref/RatePref;

    return-object v0
.end method


# virtual methods
.method public addViewCount()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "APP_VIEW_COUNT"

    invoke-virtual {p0}, Lorg/telegram/ui/Membergram/util/pref/RatePref;->getViewCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public dontShowAgain()Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "DONT_SHOW_AGAIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()I
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "APP_VIEW_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDontShowAgain(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DONT_SHOW_AGAIN"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/RatePref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method
