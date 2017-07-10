.class public Lorg/telegram/ui/Membergram/util/pref/ReportPref;
.super Ljava/lang/Object;
.source "ReportPref.java"


# static fields
.field private static final LAST_REPORT_TIME:Ljava/lang/String; = "LAST_REPORT_TIME"

.field private static final REPORT_COUNT:Ljava/lang/String; = "REPORT_COUNT"

.field private static final SHARED:Ljava/lang/String; = "Report"

.field private static reportPref:Lorg/telegram/ui/Membergram/util/pref/ReportPref;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "Report"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mSharedPref:Landroid/content/SharedPreferences;

    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/telegram/ui/Membergram/util/pref/ReportPref;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->reportPref:Lorg/telegram/ui/Membergram/util/pref/ReportPref;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Membergram/util/pref/ReportPref;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->reportPref:Lorg/telegram/ui/Membergram/util/pref/ReportPref;

    .line 22
    :cond_b
    sget-object v0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->reportPref:Lorg/telegram/ui/Membergram/util/pref/ReportPref;

    return-object v0
.end method


# virtual methods
.method public getFirstRequestDate()J
    .registers 5

    .prologue
    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "LAST_REPORT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReportCount()I
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "REPORT_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setFirstRequestDate(Ljava/lang/Long;)V
    .registers 6
    .param p1, "time"    # Ljava/lang/Long;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LAST_REPORT_TIME"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public setReportCount(I)V
    .registers 4
    .param p1, "reportCount"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "REPORT_COUNT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/pref/ReportPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method
