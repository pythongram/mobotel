.class final Lorg/telegram/ui/Components/AlertsCreator$6;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$globalAll:Z

.field final synthetic val$globalGroup:Z

.field final synthetic val$onSelect:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ZZJLjava/lang/Runnable;)V
    .registers 7

    .prologue
    .line 502
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalAll:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalGroup:Z

    iput-wide p3, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$dialog_id:J

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 505
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 506
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 507
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalAll:Z

    if-eqz v2, :cond_23

    .line 508
    const-string v2, "MessagesLed"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 514
    :goto_16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v2, :cond_22

    .line 516
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 518
    :cond_22
    return-void

    .line 509
    :cond_23
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$globalGroup:Z

    if-eqz v2, :cond_2d

    .line 510
    const-string v2, "GroupLed"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    .line 512
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$6;->val$dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_16
.end method
