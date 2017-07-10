.class public final Lde/jurihock/voicesmith/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final tics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferences:Lde/jurihock/voicesmith/Preferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/jurihock/voicesmith/Utils;->tics:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lde/jurihock/voicesmith/Utils;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p1}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/jurihock/voicesmith/Utils;->preferences:Lde/jurihock/voicesmith/Preferences;

    .line 38
    return-void
.end method

.method public static loadNativeLibrary()V
    .registers 1

    .prologue
    .line 56
    :try_start_0
    const-string v0, "Voicesmith"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 60
    :goto_5
    return-void

    .line 57
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lde/jurihock/voicesmith/Utils;->preferences:Lde/jurihock/voicesmith/Preferences;

    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->isLoggingOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    :cond_8
    return-void
.end method

.method public declared-synchronized toc(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 50
    .local v0, "toc":J
    sget-object v2, Lde/jurihock/voicesmith/Utils;->tics:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 51
    sget-object v2, Lde/jurihock/voicesmith/Utils;->tics:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 53
    :cond_18
    monitor-exit p0

    return-void

    .line 47
    .end local v0    # "toc":J
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method
