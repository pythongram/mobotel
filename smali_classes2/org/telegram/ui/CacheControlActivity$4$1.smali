.class Lorg/telegram/ui/CacheControlActivity$4$1;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/CacheControlActivity$4;

    .prologue
    .line 319
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4$1;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/32 v2, 0x5265c00

    const/4 v1, 0x2

    const/4 v10, 0x0

    .line 322
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 323
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "keep_media"

    invoke-interface {v7, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$4$1;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 325
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$4$1;->this$1:Lorg/telegram/ui/CacheControlActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity;->access$1000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_2f
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v9, Lorg/telegram/messenger/ClearCacheService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v10, v5, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 328
    .local v6, "pintent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 329
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-ne p2, v1, :cond_4e

    .line 330
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 334
    :goto_4d
    return-void

    :cond_4e
    move-wide v4, v2

    .line 332
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_4d
.end method
