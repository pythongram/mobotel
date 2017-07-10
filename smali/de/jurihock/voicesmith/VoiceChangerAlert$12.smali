.class Lde/jurihock/voicesmith/VoiceChangerAlert$12;
.super Ljava/lang/Object;
.source "VoiceChangerAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/jurihock/voicesmith/VoiceChangerAlert;->onRowClick(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Landroid/content/SharedPreferences;)V
    .registers 3
    .param p1, "this$0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 290
    iput-object p1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    iput-object p2, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 293
    if-nez p2, :cond_1a

    .line 294
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voice_speed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    :cond_14
    :goto_14
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    # invokes: Lde/jurihock/voicesmith/VoiceChangerAlert;->updateRows()V
    invoke-static {v0}, Lde/jurihock/voicesmith/VoiceChangerAlert;->access$500(Lde/jurihock/voicesmith/VoiceChangerAlert;)V

    .line 304
    return-void

    .line 295
    :cond_1a
    if-ne p2, v2, :cond_2c

    .line 296
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voice_speed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_14

    .line 297
    :cond_2c
    if-ne p2, v3, :cond_3e

    .line 298
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voice_speed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_14

    .line 299
    :cond_3e
    if-ne p2, v4, :cond_14

    .line 300
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$12;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voice_speed"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_14
.end method
