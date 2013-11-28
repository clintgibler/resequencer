.class public Lhooks/Monolith;
.super Ljava/lang/Object;
.source "Monolith.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final AccountNameSpoof:Ljava/lang/String; = "%!AccountNameSpoof%"

#the value of this static final field might be set in the static constructor
.field private static final AccountNameSpoofType:I = 0x0

.field public static AppContext:Landroid/content/Context; = null

.field private static final BTMacSpoof:Ljava/lang/String; = "%!BTMacSpoof%"

#the value of this static final field might be set in the static constructor
.field private static final BTMacSpoofType:I = 0x0

.field protected static BuildingDigest:Z = false

.field private static CHKSUM_ADLER32_App:Ljava/lang/Long; = null

.field private static CHKSUM_ADLER32_DEX:Ljava/lang/Long; = null

.field private static CHKSUM_CRC32_App:Ljava/lang/Long; = null

.field private static CHKSUM_CRC32_DEX:Ljava/lang/Long; = null

.field private static CHKSUM_MD5_App:[B = null

.field private static CHKSUM_MD5_DEX:[B = null

.field private static CHKSUM_SHA1_App:[B = null

.field private static CHKSUM_SHA1_DEX:[B = null

.field protected static final COMPARISON_LOCK:Ljava/lang/Object; = null

.field protected static final COVERAGE_LOCK:Ljava/lang/Object; = null

.field protected static final DEBUG:Z = true

.field protected static final DUMP_STACK:I = 0x5

.field private static final DeviceIDSpoof:Ljava/lang/String; = "%!DeviceIDSpoof%"

#the value of this static final field might be set in the static constructor
.field private static final DeviceIDSpoofType:I = 0x0

.field protected static final ENVIRONMENT_LOCK:Ljava/lang/Object; = null

.field private static LastReadInputStream:Ljava/io/InputStream; = null

.field protected static MethodTraceFOS:Ljava/io/FileOutputStream; = null

.field protected static final MyAppName:Ljava/lang/String; = "%!AppPackage%"

.field protected static final MyAppVersionCode:Ljava/lang/String; = "%!AppVersionCode%"

.field protected static final MyAppVersionName:Ljava/lang/String; = "%!AppVersionName%"

#the value of this static final field might be set in the static constructor
.field private static final MyCheckSigsBehavior:I = 0x0

.field private static MyChecksumInputStreams:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final MyGetPIBehavior:I = 0x0

.field protected static final MyPrefsFile:Ljava/lang/String; = "%!RndAlpha%"

#the value of this static final field might be set in the static constructor
.field private static final MySigVerifyBehavior:I = 0x0

.field private static MyWatchedChecksumsOrDigests:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MyWatchedProcess:Ljava/lang/Process; = null

.field private static final NetworkOperatorSpoof:Ljava/lang/String; = "%!NetworkOperatorSpoof%"

.field private static final WifiMacSpoof:Ljava/lang/String; = "%!WifiMacSpoof%"

.field private static final WifiMacSpoofType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    sput-object v2, Lhooks/Monolith;->MethodTraceFOS:Ljava/io/FileOutputStream;

    .line 72
    sput-object v2, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhooks/Monolith;->COVERAGE_LOCK:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhooks/Monolith;->COMPARISON_LOCK:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhooks/Monolith;->ENVIRONMENT_LOCK:Ljava/lang/Object;

    .line 91
    const-string v0, "%!CheckSigsBehavior%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    sput v0, Lhooks/Monolith;->MyCheckSigsBehavior:I

    .line 97
    const-string v0, "%!GetPIBehavior%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    sput v0, Lhooks/Monolith;->MyGetPIBehavior:I

    .line 103
    const-string v0, "%!SigVerifyBehavior%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    sput v0, Lhooks/Monolith;->MySigVerifyBehavior:I

    .line 109
    sput-object v2, Lhooks/Monolith;->MyWatchedProcess:Ljava/lang/Process;

    .line 112
    const-string v0, "%!ChksumCRC32App%"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lhooks/Monolith;->CHKSUM_CRC32_App:Ljava/lang/Long;

    .line 114
    const-string v0, "%!ChksumAdler32App%"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    sput-object v0, Lhooks/Monolith;->CHKSUM_ADLER32_App:Ljava/lang/Long;

    .line 115
    const-string v0, "%!ChksumCRC32DEX%"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lhooks/Monolith;->CHKSUM_CRC32_DEX:Ljava/lang/Long;

    .line 117
    const-string v0, "%!ChksumAdler32DEX%"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 116
    sput-object v0, Lhooks/Monolith;->CHKSUM_ADLER32_DEX:Ljava/lang/Long;

    .line 124
    sput-object v2, Lhooks/Monolith;->CHKSUM_MD5_App:[B

    .line 125
    sput-object v2, Lhooks/Monolith;->CHKSUM_SHA1_App:[B

    .line 126
    sput-object v2, Lhooks/Monolith;->CHKSUM_MD5_DEX:[B

    .line 127
    sput-object v2, Lhooks/Monolith;->CHKSUM_SHA1_DEX:[B

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lhooks/Monolith;->BuildingDigest:Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhooks/Monolith;->MyChecksumInputStreams:Ljava/util/HashMap;

    .line 142
    sput-object v2, Lhooks/Monolith;->LastReadInputStream:Ljava/io/InputStream;

    .line 153
    const-string v0, "%!DeviceIDSpoofType%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    sput v0, Lhooks/Monolith;->DeviceIDSpoofType:I

    .line 162
    const-string v0, "%!AccountNameSpoofType%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    sput v0, Lhooks/Monolith;->AccountNameSpoofType:I

    .line 174
    const-string v0, "%!WifiMacSpoofType%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    sput v0, Lhooks/Monolith;->WifiMacSpoofType:I

    .line 183
    const-string v0, "%!BTMacSpoofType%"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 182
    sput v0, Lhooks/Monolith;->BTMacSpoofType:I

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "file"
    .parameter "msg"

    .prologue
    .line 1024
    const/4 v1, 0x0

    .line 1026
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v2, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    .line 1027
    const v3, 0x8000

    .line 1026
    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1029
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1043
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "sequencer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logmt() exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1037
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1038
    :catch_1
    move-exception v0

    .line 1039
    .local v0, e:Ljava/io/IOException;
    const-string v2, "sequencer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logmt() file close exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1035
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1037
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1042
    :goto_1
    throw v2

    .line 1038
    :catch_2
    move-exception v0

    .line 1039
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "sequencer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logmt() file close exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1038
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1039
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "sequencer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logmt() file close exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkSignatures(Landroid/content/pm/PackageManager;II)I
    .locals 5
    .parameter "pm"
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    const/4 v4, 0x0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSignatures("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    const-string v3, "), calling string version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    .line 261
    .local v0, pkg1:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v4

    .line 262
    .local v1, pkg2:Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lhooks/Monolith;->checkSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static checkSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "pm"
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSignatures("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  real result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 235
    if-nez v0, :cond_0

    move v1, v0

    .line 254
    .end local v0           #result:I
    .local v1, result:I
    :goto_0
    return v1

    .line 237
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_0
    sget v2, Lhooks/Monolith;->MyCheckSigsBehavior:I

    if-nez v2, :cond_2

    .line 238
    const-string v2, "%!AppPackage%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 253
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  returning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    move v1, v0

    .line 254
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_0

    .line 242
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_2
    sget v2, Lhooks/Monolith;->MyCheckSigsBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 244
    const/4 v2, -0x4

    if-eq v0, v2, :cond_1

    .line 245
    if-eqz v0, :cond_1

    .line 246
    const/4 v0, 0x0

    .line 248
    goto :goto_1

    .line 249
    :cond_3
    sget v2, Lhooks/Monolith;->MyCheckSigsBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 250
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static contextOpenFileInput(Landroid/content/Context;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .parameter "c"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 905
    .local v0, fis:Ljava/io/FileInputStream;
    invoke-static {v0, p1}, Lhooks/Monolith;->watchInputStream(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    return-object v0
.end method

.method private static fixSysCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cmd"

    .prologue
    const/4 v4, 0x1

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fixSysCmd("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 1101
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, args:[Ljava/lang/String;
    move-object v1, p0

    .line 1104
    .local v1, newCmd:Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1105
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "md5sum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    aget-object v2, v0, v4

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    const-string v1, "echo "

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%!MD5Sum%\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    :cond_0
    return-object v1
.end method

.method private static generateRandomDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1163
    const-string v0, "0123456789"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lhooks/Monolith;->generateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateRandomMac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1169
    const-string v1, ""

    .line 1170
    .local v1, mac:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 1173
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1171
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0123456789ABCDEF"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lhooks/Monolith;->generateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static generateString(I)Ljava/lang/String;
    .locals 1
    .parameter "length"

    .prologue
    .line 1227
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()_+-=[]{}\\|;\':\",./<>?~`"

    invoke-static {v0, p0}, Lhooks/Monolith;->generateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static generateString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "charSet"
    .parameter "length"

    .prologue
    .line 1233
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1234
    .local v1, rng:Ljava/util/Random;
    new-array v2, p1, [C

    .line 1235
    .local v2, text:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1239
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 1236
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAccountName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 9
    .parameter "act"

    .prologue
    const/16 v8, 0xa

    .line 675
    const-string v3, "jrhacker"

    .line 676
    .local v3, spoofActName:Ljava/lang/String;
    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 679
    .local v1, realActName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 680
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v4, ""

    .line 681
    .local v4, storedID:Ljava/lang/String;
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 682
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    const-string v6, "%!RndAlpha%"

    .line 683
    const/4 v7, 0x0

    .line 682
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 684
    const-string v5, "act_nm"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 690
    :goto_0
    sget v5, Lhooks/Monolith;->AccountNameSpoofType:I

    packed-switch v5, :pswitch_data_0

    .line 722
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getAccountName("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lhooks/Monolith;->AccountNameSpoofType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - using: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 723
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  real: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 722
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 725
    return-object v3

    .line 687
    :cond_1
    const-string v5, "getAccountName() has no context. can\'t use session storage. using fallback if necessary."

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 692
    :pswitch_0
    move-object v3, v1

    .line 693
    goto :goto_1

    .line 696
    :pswitch_1
    const-string v5, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890."

    .line 695
    invoke-static {v5, v8}, Lhooks/Monolith;->generateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 698
    goto :goto_1

    .line 700
    :pswitch_2
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 701
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 703
    move-object v3, v4

    .line 704
    goto :goto_1

    .line 707
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890."

    .line 706
    invoke-static {v5, v8}, Lhooks/Monolith;->generateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 710
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 711
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "act_nm"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 712
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 718
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    const-string v3, "%!AccountNameSpoof%"

    goto :goto_1

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 4
    .parameter "pm"
    .parameter "packageName"

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    .local v1, result:I
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 301
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getApplicationEnabledSetting("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 302
    return v1

    .line 292
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 293
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "c"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 308
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x2

    .line 309
    .local v1, flag:I
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    .line 310
    const-string v2, "application is debuggable, lying and saying it isn\'t"

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 313
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 316
    :cond_0
    return-object v0
.end method

.method public static getBTMac(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .locals 8
    .parameter "bta"

    .prologue
    .line 791
    const-string v3, "90:31:B3:62:44:17"

    .line 792
    .local v3, spoofMac:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, realMac:Ljava/lang/String;
    const/4 v2, 0x0

    .line 796
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v4, ""

    .line 797
    .local v4, storedID:Ljava/lang/String;
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 798
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    const-string v6, "%!RndAlpha%"

    .line 799
    const/4 v7, 0x0

    .line 798
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 800
    const-string v5, "bt_mac"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 806
    :goto_0
    sget v5, Lhooks/Monolith;->BTMacSpoofType:I

    packed-switch v5, :pswitch_data_0

    .line 834
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBTMac("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lhooks/Monolith;->BTMacSpoofType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - using: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 835
    const-string v6, "  real: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 834
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 837
    return-object v3

    .line 803
    :cond_1
    const-string v5, "getBTMac() has no context. can\'t use session storage. using fallback if necessary."

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 808
    :pswitch_0
    move-object v3, v1

    .line 809
    goto :goto_1

    .line 811
    :pswitch_1
    invoke-static {}, Lhooks/Monolith;->generateRandomMac()Ljava/lang/String;

    move-result-object v3

    .line 812
    goto :goto_1

    .line 814
    :pswitch_2
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 815
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 817
    move-object v3, v4

    .line 818
    goto :goto_1

    .line 820
    :cond_2
    invoke-static {}, Lhooks/Monolith;->generateRandomMac()Ljava/lang/String;

    move-result-object v3

    .line 822
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 823
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "wifi_mac"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 824
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 830
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    const-string v3, "%!BTMacSpoof%"

    goto :goto_1

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 403
    const-string v3, "319261750826054"

    .line 404
    .local v3, spoofID:Ljava/lang/String;
    invoke-static {}, Lhooks/Monolith;->getRealDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, realID:Ljava/lang/String;
    const/4 v2, 0x0

    .line 408
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v4, ""

    .line 409
    .local v4, storedID:Ljava/lang/String;
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 410
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    const-string v6, "%!RndAlpha%"

    .line 411
    const/4 v7, 0x0

    .line 410
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 412
    const-string v5, "android_id"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    :goto_0
    sget v5, Lhooks/Monolith;->DeviceIDSpoofType:I

    packed-switch v5, :pswitch_data_0

    .line 455
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceId("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lhooks/Monolith;->DeviceIDSpoofType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - using: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 456
    const-string v6, "  real: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 455
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 458
    return-object v3

    .line 415
    :cond_1
    const-string v5, "getDeviceID() has no context. can\'t use session storage. using fallback if necessary."

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    :pswitch_0
    move-object v3, v1

    .line 421
    goto :goto_1

    .line 423
    :pswitch_1
    invoke-static {}, Lhooks/Monolith;->generateRandomDeviceID()Ljava/lang/String;

    move-result-object v3

    .line 424
    goto :goto_1

    .line 427
    :pswitch_2
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 428
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 430
    move-object v3, v4

    .line 431
    goto :goto_1

    .line 433
    :cond_2
    sget v5, Lhooks/Monolith;->DeviceIDSpoofType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 434
    invoke-static {}, Lhooks/Monolith;->generateRandomDeviceID()Ljava/lang/String;

    move-result-object v3

    .line 440
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "android_id"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 437
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-static {}, Lhooks/Monolith;->getPermutedDeviceID()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 448
    :pswitch_3
    const-string v3, "000000000000000"

    .line 449
    goto :goto_1

    .line 451
    :pswitch_4
    const-string v3, "%!DeviceIDSpoof%"

    goto :goto_1

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstallerPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pm"
    .parameter "packageName"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 278
    const-string v1, "com.google.android.feedback"

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, real:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInstallerPackageName("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    const-string v3, " but really it\'s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 283
    return-object v1
.end method

.method public static getJarEntry(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .locals 2
    .parameter "jf"
    .parameter "entryName"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getJarEntry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), we call getZipEntry()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 211
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-static {p0, p1}, Lhooks/Monolith;->getZipEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public static getNetworkOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3
    .parameter "tm"

    .prologue
    .line 729
    const-string v0, "%!NetworkOperatorSpoof%"

    .line 730
    .local v0, result:Ljava/lang/String;
    const-string v1, "%!NetworkOperatorSpoof%"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 731
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNetworkOperator() - using:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  real:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 735
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 734
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 737
    return-object v0
.end method

.method public static getOurStackDump()Ljava/lang/String;
    .locals 8

    .prologue
    .line 936
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 938
    .local v3, ste:[Ljava/lang/StackTraceElement;
    const-class v6, Lhooks/Monolith;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, pkg:Ljava/lang/String;
    const-string v4, ""

    .line 941
    .local v4, trace:Ljava/lang/String;
    const/4 v5, 0x0

    .line 944
    .local v5, traceCount:I
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    .line 953
    :cond_0
    return-object v4

    .line 945
    :cond_1
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 944
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 950
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "   >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6
    .parameter "pm"
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPackageInfo("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 325
    const/4 v1, 0x0

    .line 327
    .local v1, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 342
    :goto_0
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_0

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  spoofing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " signatures for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 345
    invoke-static {}, Lhooks/Monolith;->spoofSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 346
    .local v2, spoofSigs:[Landroid/content/pm/Signature;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 347
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    .line 346
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    .end local v2           #spoofSigs:[Landroid/content/pm/Signature;
    :cond_0
    return-object v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget v3, Lhooks/Monolith;->MyGetPIBehavior:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 331
    const-string v3, "  app not found, throwing exception"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 332
    invoke-static {v0}, Lhooks/Monolith;->setStackTrace(Ljava/lang/Throwable;)V

    .line 333
    throw v0

    .line 337
    :cond_1
    const-string v3, "  using package info from %!AppPackage%"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 338
    const-string v3, "%!AppPackage%"

    invoke-virtual {p0, v3, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private static getPermutedDeviceID()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 1139
    const/16 v5, 0xf

    new-array v2, v5, [I

    aput v7, v2, v4

    const/4 v5, 0x1

    aput v6, v2, v5

    const/16 v5, 0xa

    aput v5, v2, v8

    const/16 v5, 0xe

    aput v5, v2, v6

    const/4 v5, 0x5

    const/16 v6, 0xc

    aput v6, v2, v5

    const/4 v5, 0x6

    aput v9, v2, v5

    const/4 v5, 0x7

    aput v9, v2, v5

    const/16 v5, 0xd

    aput v5, v2, v7

    const/16 v5, 0x9

    aput v8, v2, v5

    const/16 v5, 0xa

    const/4 v6, 0x5

    aput v6, v2, v5

    const/16 v5, 0xb

    const/16 v6, 0x9

    aput v6, v2, v5

    const/16 v5, 0xc

    const/4 v6, 0x6

    aput v6, v2, v5

    const/16 v5, 0xd

    aput v7, v2, v5

    const/16 v5, 0xe

    const/16 v6, 0xb

    aput v6, v2, v5

    .line 1141
    .local v2, p:[I
    invoke-static {}, Lhooks/Monolith;->getRealDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, deviceId:Ljava/lang/String;
    const-string v3, ""

    .line 1143
    .local v3, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1144
    array-length v5, v2

    :goto_0
    if-lt v4, v5, :cond_1

    .line 1149
    :cond_0
    return-object v3

    .line 1144
    :cond_1
    aget v1, v2, v4

    .line 1145
    .local v1, i:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static getRealDeviceID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1153
    sget-object v1, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    .line 1154
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1153
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1156
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWifiMac(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 8
    .parameter "wi"

    .prologue
    .line 741
    const-string v3, "90:32:A5:75:12:9C"

    .line 742
    .local v3, spoofMac:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, realMac:Ljava/lang/String;
    const/4 v2, 0x0

    .line 746
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v4, ""

    .line 747
    .local v4, storedID:Ljava/lang/String;
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 748
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    const-string v6, "%!RndAlpha%"

    .line 749
    const/4 v7, 0x0

    .line 748
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 750
    const-string v5, "wifi_mac"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 756
    :goto_0
    sget v5, Lhooks/Monolith;->WifiMacSpoofType:I

    packed-switch v5, :pswitch_data_0

    .line 784
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getWifiMac("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lhooks/Monolith;->WifiMacSpoofType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - using: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    const-string v6, "  real: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 784
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 787
    return-object v3

    .line 753
    :cond_1
    const-string v5, "getWifiMac() has no context. can\'t use session storage. using fallback if necessary."

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 758
    :pswitch_0
    move-object v3, v1

    .line 759
    goto :goto_1

    .line 761
    :pswitch_1
    invoke-static {}, Lhooks/Monolith;->generateRandomMac()Ljava/lang/String;

    move-result-object v3

    .line 762
    goto :goto_1

    .line 764
    :pswitch_2
    sget-object v5, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 765
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 767
    move-object v3, v4

    .line 768
    goto :goto_1

    .line 770
    :cond_2
    invoke-static {}, Lhooks/Monolith;->generateRandomMac()Ljava/lang/String;

    move-result-object v3

    .line 772
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 773
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "wifi_mac"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 780
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    const-string v3, "%!WifiMacSpoof%"

    goto :goto_1

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getZipEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 3
    .parameter "zf"
    .parameter "entryName"

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getZipEntry("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 218
    .local v0, ze:Ljava/util/zip/ZipEntry;
    const-string v1, "classes.dex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "  spoofing entry info"

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 220
    const-string v1, "%!ZipClassesDexCrc%"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 221
    const-string v1, "%!ZipClassesDexSize%"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 223
    const-string v1, "%!ZipClassesDexCompressedSize%"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 226
    :cond_0
    return-object v0
.end method

.method private static isChecksumFileName(Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"

    .prologue
    .line 1074
    const/4 v1, 0x0

    .line 1076
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isChecksumFileName("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 1080
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1081
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 1082
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1084
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  guessing package = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 1087
    const-string v2, "%!AppPackage%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    const/4 v1, 0x1

    .line 1094
    :cond_1
    :goto_0
    return v1

    .line 1090
    :cond_2
    const-string v2, "classes.dex"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static isDebuggerConnected()Z
    .locals 1

    .prologue
    .line 266
    const-string v0, "isDebuggerConnected()? of course not :D"

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected static isThisApk(Ljava/io/File;)Z
    .locals 3
    .parameter "f"

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1120
    .local v0, result:Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    const/4 v0, 0x0

    .line 1124
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%!AppPackage%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    const/4 v0, 0x1

    .line 1128
    :cond_1
    return v0
.end method

.method protected static isThisClassesDex(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 1132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classes.dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lastModified(Ljava/io/File;)J
    .locals 5
    .parameter "f"

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 375
    .local v0, retVal:J
    invoke-static {p0}, Lhooks/Monolith;->isThisApk(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    const-string v2, "%!OrigApkLastModified%"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastModified() spoofing of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 378
    const-string v3, " real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 390
    :goto_0
    return-wide v0

    .line 380
    :cond_0
    invoke-static {p0}, Lhooks/Monolith;->isThisClassesDex(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    const-string v2, "%!OrigClassesDexLastModified%"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastModified() spoofing of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    const-string v3, " real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastModified() NOT spoofing of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static length(Ljava/io/File;)J
    .locals 5
    .parameter "f"

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 355
    .local v0, retVal:J
    invoke-static {p0}, Lhooks/Monolith;->isThisApk(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const-string v2, "%!OrigApkFileSize%"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "length() spoofing file length of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 358
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 370
    :goto_0
    return-wide v0

    .line 360
    :cond_0
    invoke-static {p0}, Lhooks/Monolith;->isThisClassesDex(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    const-string v2, "%!OrigClassesDexFileSize%"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "length() spoofing file length of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 363
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "length() NOT spoofing file length of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    const-string v3, " with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 2
    .parameter "sourcePathName"
    .parameter "outputPathName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadDex() src:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 206
    invoke-static {p0, p1, p2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public static log(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 961
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 963
    return-void
.end method

.method public static log(J)V
    .locals 1
    .parameter "i"

    .prologue
    .line 967
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 969
    return-void
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 928
    const-string v0, "sequencer"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v0, "sequencer"

    invoke-static {}, Lhooks/Monolith;->getOurStackDump()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method public static logComparisons(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 989
    sget-object v0, Lhooks/Monolith;->COMPARISON_LOCK:Ljava/lang/Object;

    const-string v1, "comparisons.txt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhooks/Monolith;->logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public static logmt(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 972
    sget-object v0, Lhooks/Monolith;->COVERAGE_LOCK:Ljava/lang/Object;

    const-string v1, "mt.log"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhooks/Monolith;->logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public static logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "lock"
    .parameter "file"
    .parameter "msg"

    .prologue
    .line 1003
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lhooks/Monolith;->logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1004
    return-void
.end method

.method public static logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "lock"
    .parameter "file"
    .parameter "msg"
    .parameter "appendStack"

    .prologue
    .line 1011
    sget-object v1, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    if-eqz p3, :cond_0

    .line 1015
    invoke-static {}, Lhooks/Monolith;->getOurStackDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :cond_0
    monitor-enter p0

    .line 1017
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lhooks/Monolith;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    monitor-exit p0

    .line 1021
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 1016
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logmt(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "file"
    .parameter "o"

    .prologue
    .line 993
    sget-object v0, Lhooks/Monolith;->COVERAGE_LOCK:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lhooks/Monolith;->logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method private static mentionsOurPackage(Ljava/lang/String;)Z
    .locals 3
    .parameter "someStr"

    .prologue
    .line 1221
    const-class v1, Lhooks/Monolith;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, pkg:Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static osWrite(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "os"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lhooks/Monolith;->osWrite(Ljava/io/OutputStream;[B)V

    .line 483
    return-void
.end method

.method public static osWrite(Ljava/io/OutputStream;[B)V
    .locals 7
    .parameter "os"
    .parameter "barr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "osWrite("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 488
    sget-object v5, Lhooks/Monolith;->MyWatchedProcess:Ljava/lang/Process;

    if-eqz v5, :cond_1

    .line 489
    const/4 v3, 0x0

    .line 491
    .local v3, target:Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/io/OutputStream;

    if-ne v5, v6, :cond_2

    .line 492
    sget-object v5, Lhooks/Monolith;->MyWatchedProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    if-ne p0, v5, :cond_2

    .line 493
    const/4 v3, 0x1

    .line 512
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 513
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lhooks/Monolith;->fixSysCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, newCmd:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "osWrite() new cmd = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 519
    .end local v2           #newCmd:Ljava/lang/String;
    .end local v3           #target:Z
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 520
    return-void

    .line 495
    .restart local v3       #target:Z
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/io/DataOutputStream;

    if-eq v5, v6, :cond_3

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/io/FilterOutputStream;

    if-ne v5, v6, :cond_0

    .line 497
    :cond_3
    const/4 v1, 0x0

    .line 499
    .local v1, f:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v5, Ljava/io/FilterOutputStream;

    .line 500
    const-string v6, "out"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 501
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 502
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;

    .line 503
    .local v4, theOs:Ljava/io/OutputStream;
    sget-object v5, Lhooks/Monolith;->MyWatchedProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 504
    const/4 v3, 0x1

    goto :goto_0

    .line 507
    .end local v4           #theOs:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "osWrite() exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static runtimeExec(Ljava/lang/Runtime;Ljava/lang/String;)Ljava/lang/Process;
    .locals 3
    .parameter "rt"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {p1}, Lhooks/Monolith;->fixSysCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, newCmd:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runtimeExec("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    return-object v1
.end method

.method private static scrubStackTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "stackTrace"

    .prologue
    .line 1208
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, lines:[Ljava/lang/String;
    const-string v2, ""

    .line 1210
    .local v2, result:Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 1216
    return-object v2

    .line 1210
    :cond_0
    aget-object v0, v1, v3

    .line 1211
    .local v0, line:Ljava/lang/String;
    invoke-static {v0}, Lhooks/Monolith;->mentionsOurPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1210
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static scrubStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 6
    .parameter "ste"

    .prologue
    .line 1196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v2, newStackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StackTraceElement;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 1203
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1202
    new-array v1, v3, [Ljava/lang/StackTraceElement;

    .line 1204
    .local v1, newStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    return-object v3

    .line 1197
    .end local v1           #newStack:[Ljava/lang/StackTraceElement;
    :cond_0
    aget-object v0, p0, v3

    .line 1198
    .local v0, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhooks/Monolith;->mentionsOurPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1199
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 917
    sget-object v0, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 918
    sput-object p0, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    .line 920
    sget-object v0, Lhooks/Monolith;->ENVIRONMENT_LOCK:Ljava/lang/Object;

    const-string v1, "environment.json"

    sget-object v2, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    invoke-static {v2}, Lhooks/LogPhoneEnvironment;->getEnvironmentJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lhooks/Monolith;->logmt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 924
    :cond_0
    return-void
.end method

.method public static setStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "th"

    .prologue
    .line 550
    const-string v0, "setStackTrace() get ready to lie!"

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 551
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->scrubStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 552
    return-void
.end method

.method public static signatureVerify(Ljava/security/Signature;[B)Z
    .locals 3
    .parameter "s"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x1

    .line 526
    .local v0, result:Z
    sget v1, Lhooks/Monolith;->MySigVerifyBehavior:I

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    .line 530
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signatureVerify(2) returning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". is actually "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 532
    return v0
.end method

.method public static signatureVerify(Ljava/security/Signature;[BII)Z
    .locals 3
    .parameter "s"
    .parameter "signature"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, 0x1

    .line 540
    .local v0, result:Z
    sget v1, Lhooks/Monolith;->MySigVerifyBehavior:I

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->verify([BII)Z

    move-result v0

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signatureVerify(4) returning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 545
    return v0
.end method

.method public static spoofChecksum(Ljava/util/zip/Checksum;)J
    .locals 5
    .parameter "cs"

    .prologue
    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "spoofChecksum("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 642
    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    .line 644
    .local v1, result:J
    sget-object v3, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    sget-object v3, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lhooks/Monolith;->isChecksumFileName(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 670
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 671
    return-wide v1

    .line 650
    .restart local v0       #fileName:Ljava/lang/String;
    :pswitch_0
    const-string v3, "  giving APP chksum!"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/zip/Adler32;

    if-ne v3, v4, :cond_1

    .line 652
    sget-object v3, Lhooks/Monolith;->CHKSUM_ADLER32_App:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 653
    goto :goto_0

    .line 655
    :cond_1
    sget-object v3, Lhooks/Monolith;->CHKSUM_CRC32_App:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 657
    goto :goto_0

    .line 659
    :pswitch_1
    const-string v3, "  giving classes.dex chksum!"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/zip/Adler32;

    if-ne v3, v4, :cond_2

    .line 661
    sget-object v3, Lhooks/Monolith;->CHKSUM_ADLER32_DEX:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 662
    goto :goto_0

    .line 664
    :cond_2
    sget-object v3, Lhooks/Monolith;->CHKSUM_CRC32_DEX:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spoofDigest(Ljava/security/MessageDigest;)[B
    .locals 5
    .parameter "md"

    .prologue
    .line 591
    sget-object v3, Lhooks/Monolith;->CHKSUM_MD5_App:[B

    if-nez v3, :cond_0

    .line 593
    :try_start_0
    const-string v3, "%!ChksumMD5App%"

    invoke-static {v3}, Lhooks/CryptUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lhooks/Monolith;->CHKSUM_MD5_App:[B

    .line 594
    const-string v3, "%!ChksumSHA1App%"

    invoke-static {v3}, Lhooks/CryptUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lhooks/Monolith;->CHKSUM_SHA1_App:[B

    .line 596
    const-string v3, "%!ChksumMD5DEX%"

    invoke-static {v3}, Lhooks/CryptUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lhooks/Monolith;->CHKSUM_MD5_DEX:[B

    .line 597
    const-string v3, "%!ChksumSHA1DEX%"

    invoke-static {v3}, Lhooks/CryptUtils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lhooks/Monolith;->CHKSUM_SHA1_DEX:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "spoofDigest("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 606
    const/4 v2, 0x0

    .line 608
    .local v2, result:[B
    sget-object v3, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 609
    sget-object v3, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Lhooks/Monolith;->isChecksumFileName(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 636
    .end local v1           #fileName:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lhooks/CryptUtils;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 637
    return-object v2

    .line 599
    .end local v2           #result:[B
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 612
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v2       #result:[B
    :pswitch_0
    const-string v3, "  giving APP digest!"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 613
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MD5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    sget-object v2, Lhooks/Monolith;->CHKSUM_MD5_App:[B

    .line 615
    goto :goto_1

    .line 617
    :cond_1
    sget-object v2, Lhooks/Monolith;->CHKSUM_SHA1_App:[B

    .line 619
    goto :goto_1

    .line 621
    :pswitch_1
    const-string v3, "  giving classes.dex digest!"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 622
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MD5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 623
    sget-object v2, Lhooks/Monolith;->CHKSUM_MD5_DEX:[B

    .line 624
    goto :goto_1

    .line 626
    :cond_2
    sget-object v2, Lhooks/Monolith;->CHKSUM_SHA1_DEX:[B

    goto :goto_1

    .line 632
    .end local v1           #fileName:Ljava/lang/String;
    :cond_3
    const-string v3, "  don\'t really know what we\'re digesting. sending the real thing!"

    invoke-static {v3}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    goto :goto_1

    .line 610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static spoofSignatures()[Landroid/content/pm/Signature;
    .locals 6

    .prologue
    .line 1177
    const-string v4, "spoofSignatures() called!"

    invoke-static {v4}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 1179
    const-string v4, "%!CertCount%"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1180
    .local v0, certCount:I
    new-array v3, v0, [Landroid/content/pm/Signature;

    .line 1185
    .local v3, result:[Landroid/content/pm/Signature;
    const-string v2, "%!SignatureChars%"

    .line 1187
    .local v2, replace:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1191
    return-object v3

    .line 1188
    :cond_0
    new-instance v4, Landroid/content/pm/Signature;

    const-string v5, "%!SignatureChars%"

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static threadDumpStack()V
    .locals 5

    .prologue
    .line 562
    const-string v4, "threadDumpStack() get ready to lie!"

    invoke-static {v4}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 563
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 564
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 565
    .local v2, ps:Ljava/io/PrintStream;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 567
    .local v1, origPS:Ljava/io/PrintStream;
    invoke-static {v2}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 568
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 569
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 571
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhooks/Monolith;->scrubStackTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, trace:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public static threadGetStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 1
    .parameter "t"

    .prologue
    .line 556
    const-string v0, "threadGetStackTrace() get ready to lie!"

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->scrubStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public static throwablePrintStackTrace(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 577
    const-string v4, "throwablePrintStack() get ready to lie!"

    invoke-static {v4}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 578
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 580
    .local v2, ps:Ljava/io/PrintStream;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 582
    .local v1, origPS:Ljava/io/PrintStream;
    invoke-static {v2}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 583
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 584
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhooks/Monolith;->scrubStackTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, trace:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public static toast(Ljava/lang/Object;)V
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1046
    sget-object v2, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1047
    const-string v2, "toast() can\'t happen because no context."

    invoke-static {v2}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 1063
    :goto_0
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, str:Ljava/lang/String;
    sget-object v2, Lhooks/Monolith;->AppContext:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1057
    .local v1, t:Landroid/widget/Toast;
    const/16 v2, 0x31

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1060
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1061
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1062
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static waitForDebugger()V
    .locals 2

    .prologue
    .line 191
    :goto_0
    :try_start_0
    const-string v0, "  pretending to wait for debugger!"

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 194
    const-wide/16 v0, 0x20eb

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    return-void
.end method

.method public static watchChecksum(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .locals 2
    .parameter "is"
    .parameter "chk"

    .prologue
    .line 849
    sget-object v1, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    :goto_0
    return-void

    .line 850
    :cond_0
    sget-object v1, Lhooks/Monolith;->MyChecksumInputStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 851
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 852
    const-string v1, "  unable to determine filename of checksum!"

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 855
    :cond_1
    sget-object v1, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static watchDigest(Ljava/security/MessageDigest;)V
    .locals 3
    .parameter "md"

    .prologue
    .line 860
    const/4 v1, 0x1

    sput-boolean v1, Lhooks/Monolith;->BuildingDigest:Z

    .line 862
    sget-object v1, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    :goto_0
    return-void

    .line 864
    :cond_0
    sget-object v1, Lhooks/Monolith;->LastReadInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 865
    const-string v1, "  updating message digest, but don\'t know last read InputStream. should only see this once."

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 869
    :cond_1
    sget-object v1, Lhooks/Monolith;->MyChecksumInputStreams:Ljava/util/HashMap;

    sget-object v2, Lhooks/Monolith;->LastReadInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 870
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 871
    const-string v1, "  unable to determine filename of checksum!"

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    goto :goto_0

    .line 874
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  watching message digest for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 875
    sget-object v1, Lhooks/Monolith;->MyWatchedChecksumsOrDigests:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static watchInputStream(Ljava/lang/Object;Ljava/io/File;)V
    .locals 1
    .parameter "is"
    .parameter "f"

    .prologue
    .line 887
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lhooks/Monolith;->watchInputStream(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public static watchInputStream(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "is"
    .parameter "fileName"

    .prologue
    .line 893
    sget-object v0, Lhooks/Monolith;->MyChecksumInputStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    .end local p0
    :goto_0
    return-void

    .line 897
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "watchInputStream("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 898
    sget-object v0, Lhooks/Monolith;->MyChecksumInputStreams:Ljava/util/HashMap;

    check-cast p0, Ljava/io/InputStream;

    .end local p0
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static watchInputStreamReadForDigest(Ljava/lang/Object;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 880
    sget-boolean v0, Lhooks/Monolith;->BuildingDigest:Z

    if-eqz v0, :cond_0

    .line 881
    check-cast p0, Ljava/io/InputStream;

    .end local p0
    sput-object p0, Lhooks/Monolith;->LastReadInputStream:Ljava/io/InputStream;

    .line 883
    :cond_0
    return-void
.end method

.method public static watchProcess(Ljava/lang/Process;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 910
    sput-object p0, Lhooks/Monolith;->MyWatchedProcess:Ljava/lang/Process;

    .line 911
    return-void
.end method


# virtual methods
.method public getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "setting"

    .prologue
    .line 462
    const-string v0, "android_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "getSettingString(android_id) returning getDeviceID()"

    invoke-static {v0}, Lhooks/Monolith;->log(Ljava/lang/Object;)V

    .line 465
    invoke-static {}, Lhooks/Monolith;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
