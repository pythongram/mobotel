.class Lde/jurihock/voicesmith/VoiceChangerAlert$13;
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

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Landroid/content/SharedPreferences;Lorg/telegram/ui/Components/NumberPicker;)V
    .registers 4
    .param p1, "this$0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 328
    iput-object p1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$13;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    iput-object p2, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$13;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$13;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 331
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$13;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "transpose_semitone"

    iget-object v2, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$13;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert$13;->this$0:Lde/jurihock/voicesmith/VoiceChangerAlert;

    # invokes: Lde/jurihock/voicesmith/VoiceChangerAlert;->updateRows()V
    invoke-static {v1}, Lde/jurihock/voicesmith/VoiceChangerAlert;->access$500(Lde/jurihock/voicesmith/VoiceChangerAlert;)V

    .line 336
    return-void
.end method
