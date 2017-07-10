.class final Lorg/telegram/ui/Telehgram/TextNicer$1;
.super Ljava/lang/Object;
.source "TextNicer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/TextNicer;->showDialog(Landroid/app/Activity;Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 53
    if-nez p2, :cond_18

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    :cond_17
    :goto_17
    return-void

    .line 56
    :cond_18
    if-ne p2, v2, :cond_2a

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_17

    .line 59
    :cond_2a
    if-ne p2, v3, :cond_3c

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_17

    .line 62
    :cond_3c
    if-ne p2, v4, :cond_4e

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_17

    .line 65
    :cond_4e
    if-ne p2, v5, :cond_60

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_17

    .line 68
    :cond_60
    if-ne p2, v6, :cond_72

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_17

    .line 71
    :cond_72
    const/4 v0, 0x6

    if-ne p2, v0, :cond_86

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_17

    .line 74
    :cond_86
    const/4 v0, 0x7

    if-ne p2, v0, :cond_17

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextNicer$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nicewrite"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_17
.end method
