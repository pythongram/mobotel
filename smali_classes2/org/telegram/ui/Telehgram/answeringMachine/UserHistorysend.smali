.class public Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;
.super Ljava/lang/Object;
.source "UserHistorysend.java"


# static fields
.field private static list:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(J)V
    .registers 6
    .param p0, "userId"    # J

    .prologue
    .line 33
    sget-object v0, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static isOk(Ljava/lang/Long;)Z
    .registers 9
    .param p0, "userId"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "answeringmachinetime"

    const/4 v5, 0x5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 18
    .local v0, "time":I
    sget-object v1, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1b

    move v1, v2

    .line 29
    :goto_1a
    return v1

    .line 21
    :cond_1b
    sget-object v1, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    move v1, v2

    .line 22
    goto :goto_1a

    .line 24
    :cond_25
    sget-object v1, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const v1, 0xea60

    mul-int/2addr v1, v0

    int-to-long v6, v1

    add-long/2addr v4, v6

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_46

    move v1, v3

    .line 26
    goto :goto_1a

    .line 28
    :cond_46
    sget-object v1, Lorg/telegram/ui/Telehgram/answeringMachine/UserHistorysend;->list:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 29
    goto :goto_1a
.end method
