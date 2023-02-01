// The MIT License (MIT)
//
// Copyright © 2022 Ivan Izyumkin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import UIKit.UIDevice

/// Protocol for the `MCUnicodeManager`.
protocol MCUnicodeManagerProtocol {
    /// Returns categories with filtered emoji arrays that are available in the current version of iOS.
    func getEmojisForCurrentIOSVersion() -> [MCEmojiCategory]
}

/// The class is responsible for getting a relevant set of emojis for iOS version.
final class MCUnicodeManager: MCUnicodeManagerProtocol {
    
    // MARK: - Private Properties
    
    /// The maximum available Unicode version for the current iOS version.
    private let maxCurrentAvailableUnicodeVersion: Double = {
        let currentIOSVersion = (UIDevice.current.systemVersion as NSString).floatValue
        switch currentIOSVersion {
        case 12.1...13.1:
            return 11.0
        case 13.2...14.1:
            return 12.0
        case 14.2...14.4:
            return 13.0
        case 14.5...15.3:
            return 13.1
        case 15.4...:
            return 14.0
        default:
            return 5.0
        }
    }()
    
    // MARK: - Public Methods
    
    public func getEmojisForCurrentIOSVersion() -> [MCEmojiCategory] {
        return [
            .init(
                categoryName: getEmojiCategoryTitle(for: .people),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F600],
                        isSkinToneSupport: false,
                        searchKey: "grinningFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F603],
                        isSkinToneSupport: false,
                        searchKey: "grinningFaceWithBigEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F604],
                        isSkinToneSupport: false,
                        searchKey: "grinningFaceWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F601],
                        isSkinToneSupport: false,
                        searchKey: "beamingFaceWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F606],
                        isSkinToneSupport: false,
                        searchKey: "grinningSquintingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F605],
                        isSkinToneSupport: false,
                        searchKey: "grinningFaceWithSweat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F923],
                        isSkinToneSupport: false,
                        searchKey: "rollingOnTheFloorLaughing",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F602],
                        isSkinToneSupport: false,
                        searchKey: "faceWithTearsOfJoy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F642],
                        isSkinToneSupport: false,
                        searchKey: "slightlySmilingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F643],
                        isSkinToneSupport: false,
                        searchKey: "upsideDownFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE0],
                        isSkinToneSupport: false,
                        searchKey: "meltingFace",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F609],
                        isSkinToneSupport: false,
                        searchKey: "winkingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60A],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F607],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithHalo",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F970],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithHearts",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60D],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithHeartEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F929],
                        isSkinToneSupport: false,
                        searchKey: "starStruck",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F618],
                        isSkinToneSupport: false,
                        searchKey: "faceBlowingAKiss",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F617],
                        isSkinToneSupport: false,
                        searchKey: "kissingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x263A, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "smilingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61A],
                        isSkinToneSupport: false,
                        searchKey: "kissingFaceWithClosedEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F619],
                        isSkinToneSupport: false,
                        searchKey: "kissingFaceWithSmilingEyes",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F972],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithTear",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60B],
                        isSkinToneSupport: false,
                        searchKey: "faceSavoringFood",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61B],
                        isSkinToneSupport: false,
                        searchKey: "faceWithTongue",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61C],
                        isSkinToneSupport: false,
                        searchKey: "winkingFaceWithTongue",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92A],
                        isSkinToneSupport: false,
                        searchKey: "zanyFace",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61D],
                        isSkinToneSupport: false,
                        searchKey: "squintingFaceWithTongue",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F911],
                        isSkinToneSupport: false,
                        searchKey: "moneyMouthFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F917],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithOpenHands",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92D],
                        isSkinToneSupport: false,
                        searchKey: "faceWithHandOverMouth",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE2],
                        isSkinToneSupport: false,
                        searchKey: "faceWithOpenEyesAndHandOverMouth",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE3],
                        isSkinToneSupport: false,
                        searchKey: "faceWithPeekingEye",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92B],
                        isSkinToneSupport: false,
                        searchKey: "shushingFace",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F914],
                        isSkinToneSupport: false,
                        searchKey: "thinkingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE1],
                        isSkinToneSupport: false,
                        searchKey: "salutingFace",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F910],
                        isSkinToneSupport: false,
                        searchKey: "zipperMouthFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F928],
                        isSkinToneSupport: false,
                        searchKey: "faceWithRaisedEyebrow",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F610],
                        isSkinToneSupport: false,
                        searchKey: "neutralFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F611],
                        isSkinToneSupport: false,
                        searchKey: "expressionlessFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F636],
                        isSkinToneSupport: false,
                        searchKey: "faceWithoutMouth",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE5],
                        isSkinToneSupport: false,
                        searchKey: "dottedLineFace",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F636, 0x200D, 0x1F32B, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "faceInClouds",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60F],
                        isSkinToneSupport: false,
                        searchKey: "smirkingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F612],
                        isSkinToneSupport: false,
                        searchKey: "unamusedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F644],
                        isSkinToneSupport: false,
                        searchKey: "faceWithRollingEyes",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62C],
                        isSkinToneSupport: false,
                        searchKey: "grimacingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62E, 0x200D, 0x1F4A8],
                        isSkinToneSupport: false,
                        searchKey: "faceExhaling",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F925],
                        isSkinToneSupport: false,
                        searchKey: "lyingFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE8],
                        isSkinToneSupport: false,
                        searchKey: "shakingFace",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60C],
                        isSkinToneSupport: false,
                        searchKey: "relievedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F614],
                        isSkinToneSupport: false,
                        searchKey: "pensiveFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62A],
                        isSkinToneSupport: false,
                        searchKey: "sleepyFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F924],
                        isSkinToneSupport: false,
                        searchKey: "droolingFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F634],
                        isSkinToneSupport: false,
                        searchKey: "sleepingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F637],
                        isSkinToneSupport: false,
                        searchKey: "faceWithMedicalMask",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F912],
                        isSkinToneSupport: false,
                        searchKey: "faceWithThermometer",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F915],
                        isSkinToneSupport: false,
                        searchKey: "faceWithHeadBandage",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F922],
                        isSkinToneSupport: false,
                        searchKey: "nauseatedFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92E],
                        isSkinToneSupport: false,
                        searchKey: "faceVomiting",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F927],
                        isSkinToneSupport: false,
                        searchKey: "sneezingFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F975],
                        isSkinToneSupport: false,
                        searchKey: "hotFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F976],
                        isSkinToneSupport: false,
                        searchKey: "coldFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F974],
                        isSkinToneSupport: false,
                        searchKey: "woozyFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F635],
                        isSkinToneSupport: false,
                        searchKey: "faceWithCrossedOutEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F635, 0x200D, 0x1F4AB],
                        isSkinToneSupport: false,
                        searchKey: "faceWithSpiralEyes",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92F],
                        isSkinToneSupport: false,
                        searchKey: "explodingHead",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F920],
                        isSkinToneSupport: false,
                        searchKey: "cowboyHatFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F973],
                        isSkinToneSupport: false,
                        searchKey: "partyingFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F978],
                        isSkinToneSupport: false,
                        searchKey: "disguisedFace",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60E],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithSunglasses",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F913],
                        isSkinToneSupport: false,
                        searchKey: "nerdFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D0],
                        isSkinToneSupport: false,
                        searchKey: "faceWithMonocle",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F615],
                        isSkinToneSupport: false,
                        searchKey: "confusedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE4],
                        isSkinToneSupport: false,
                        searchKey: "faceWithDiagonalMouth",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61F],
                        isSkinToneSupport: false,
                        searchKey: "worriedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F641],
                        isSkinToneSupport: false,
                        searchKey: "slightlyFrowningFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2639, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "frowningFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62E],
                        isSkinToneSupport: false,
                        searchKey: "faceWithOpenMouth",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62F],
                        isSkinToneSupport: false,
                        searchKey: "hushedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F632],
                        isSkinToneSupport: false,
                        searchKey: "astonishedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F633],
                        isSkinToneSupport: false,
                        searchKey: "flushedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97A],
                        isSkinToneSupport: false,
                        searchKey: "pleadingFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F979],
                        isSkinToneSupport: false,
                        searchKey: "faceHoldingBackTears",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F626],
                        isSkinToneSupport: false,
                        searchKey: "frowningFaceWithOpenMouth",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F627],
                        isSkinToneSupport: false,
                        searchKey: "anguishedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F628],
                        isSkinToneSupport: false,
                        searchKey: "fearfulFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F630],
                        isSkinToneSupport: false,
                        searchKey: "anxiousFaceWithSweat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F625],
                        isSkinToneSupport: false,
                        searchKey: "sadButRelievedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F622],
                        isSkinToneSupport: false,
                        searchKey: "cryingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62D],
                        isSkinToneSupport: false,
                        searchKey: "loudlyCryingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F631],
                        isSkinToneSupport: false,
                        searchKey: "faceScreamingInFear",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F616],
                        isSkinToneSupport: false,
                        searchKey: "confoundedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F623],
                        isSkinToneSupport: false,
                        searchKey: "perseveringFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61E],
                        isSkinToneSupport: false,
                        searchKey: "disappointedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F613],
                        isSkinToneSupport: false,
                        searchKey: "downcastFaceWithSweat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F629],
                        isSkinToneSupport: false,
                        searchKey: "wearyFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62B],
                        isSkinToneSupport: false,
                        searchKey: "tiredFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F971],
                        isSkinToneSupport: false,
                        searchKey: "yawningFace",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F624],
                        isSkinToneSupport: false,
                        searchKey: "faceWithSteamFromNose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F621],
                        isSkinToneSupport: false,
                        searchKey: "enragedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F620],
                        isSkinToneSupport: false,
                        searchKey: "angryFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92C],
                        isSkinToneSupport: false,
                        searchKey: "faceWithSymbolsOnMouth",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F608],
                        isSkinToneSupport: false,
                        searchKey: "smilingFaceWithHorns",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47F],
                        isSkinToneSupport: false,
                        searchKey: "angryFaceWithHorns",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F480],
                        isSkinToneSupport: false,
                        searchKey: "skull",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2620, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "skullAndCrossbones",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A9],
                        isSkinToneSupport: false,
                        searchKey: "pileOfPoo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F921],
                        isSkinToneSupport: false,
                        searchKey: "clownFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F479],
                        isSkinToneSupport: false,
                        searchKey: "ogre",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47A],
                        isSkinToneSupport: false,
                        searchKey: "goblin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47B],
                        isSkinToneSupport: false,
                        searchKey: "ghost",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47D],
                        isSkinToneSupport: false,
                        searchKey: "alien",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47E],
                        isSkinToneSupport: false,
                        searchKey: "alienMonster",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F916],
                        isSkinToneSupport: false,
                        searchKey: "robot",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63A],
                        isSkinToneSupport: false,
                        searchKey: "grinningCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F638],
                        isSkinToneSupport: false,
                        searchKey: "grinningCatWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F639],
                        isSkinToneSupport: false,
                        searchKey: "catWithTearsOfJoy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63B],
                        isSkinToneSupport: false,
                        searchKey: "smilingCatWithHeartEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63C],
                        isSkinToneSupport: false,
                        searchKey: "catWithWrySmile",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63D],
                        isSkinToneSupport: false,
                        searchKey: "kissingCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F640],
                        isSkinToneSupport: false,
                        searchKey: "wearyCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63F],
                        isSkinToneSupport: false,
                        searchKey: "cryingCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63E],
                        isSkinToneSupport: false,
                        searchKey: "poutingCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F648],
                        isSkinToneSupport: false,
                        searchKey: "seeNoEvilMonkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F649],
                        isSkinToneSupport: false,
                        searchKey: "hearNoEvilMonkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64A],
                        isSkinToneSupport: false,
                        searchKey: "speakNoEvilMonkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48C],
                        isSkinToneSupport: false,
                        searchKey: "loveLetter",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F498],
                        isSkinToneSupport: false,
                        searchKey: "heartWithArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49D],
                        isSkinToneSupport: false,
                        searchKey: "heartWithRibbon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F496],
                        isSkinToneSupport: false,
                        searchKey: "sparklingHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F497],
                        isSkinToneSupport: false,
                        searchKey: "growingHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F493],
                        isSkinToneSupport: false,
                        searchKey: "beatingHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49E],
                        isSkinToneSupport: false,
                        searchKey: "revolvingHearts",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F495],
                        isSkinToneSupport: false,
                        searchKey: "twoHearts",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49F],
                        isSkinToneSupport: false,
                        searchKey: "heartDecoration",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2763, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "heartExclamation",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F494],
                        isSkinToneSupport: false,
                        searchKey: "brokenHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2764, 0xFE0F, 0x200D, 0x1F525],
                        isSkinToneSupport: false,
                        searchKey: "heartOnFire",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x2764, 0xFE0F, 0x200D, 0x1FA79],
                        isSkinToneSupport: false,
                        searchKey: "mendingHeart",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x2764, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "redHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA77],
                        isSkinToneSupport: false,
                        searchKey: "pinkHeart",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E1],
                        isSkinToneSupport: false,
                        searchKey: "orangeHeart",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49B],
                        isSkinToneSupport: false,
                        searchKey: "yellowHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49A],
                        isSkinToneSupport: false,
                        searchKey: "greenHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F499],
                        isSkinToneSupport: false,
                        searchKey: "blueHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA75],
                        isSkinToneSupport: false,
                        searchKey: "lightBlueHeart",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49C],
                        isSkinToneSupport: false,
                        searchKey: "purpleHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90E],
                        isSkinToneSupport: false,
                        searchKey: "brownHeart",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5A4],
                        isSkinToneSupport: false,
                        searchKey: "blackHeart",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA76],
                        isSkinToneSupport: false,
                        searchKey: "greyHeart",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90D],
                        isSkinToneSupport: false,
                        searchKey: "whiteHeart",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48B],
                        isSkinToneSupport: false,
                        searchKey: "kissMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AF],
                        isSkinToneSupport: false,
                        searchKey: "hundredPoints",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A2],
                        isSkinToneSupport: false,
                        searchKey: "angerSymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A5],
                        isSkinToneSupport: false,
                        searchKey: "collision",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AB],
                        isSkinToneSupport: false,
                        searchKey: "dizzy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A6],
                        isSkinToneSupport: false,
                        searchKey: "sweatDroplets",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A8],
                        isSkinToneSupport: false,
                        searchKey: "dashingAway",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F573, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "hole",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AC],
                        isSkinToneSupport: false,
                        searchKey: "speechBalloon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F441, 0xFE0F, 0x200D, 0x1F5E8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "eyeInSpeechBubble",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5E8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "leftSpeechBubble",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5EF, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rightAngerBubble",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AD],
                        isSkinToneSupport: false,
                        searchKey: "thoughtBalloon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A4],
                        isSkinToneSupport: false,
                        searchKey: "zZZ",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44B],
                        isSkinToneSupport: true,
                        searchKey: "wavingHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91A],
                        isSkinToneSupport: true,
                        searchKey: "raisedBackOfHand",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F590, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "handWithFingersSplayed",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x270B],
                        isSkinToneSupport: true,
                        searchKey: "raisedHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F596],
                        isSkinToneSupport: true,
                        searchKey: "vulcanSalute",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF1],
                        isSkinToneSupport: true,
                        searchKey: "rightwardsHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF2],
                        isSkinToneSupport: true,
                        searchKey: "leftwardsHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF3],
                        isSkinToneSupport: true,
                        searchKey: "palmDownHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF4],
                        isSkinToneSupport: true,
                        searchKey: "palmUpHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF7],
                        isSkinToneSupport: true,
                        searchKey: "leftwardsPushingHand",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF8],
                        isSkinToneSupport: true,
                        searchKey: "rightwardsPushingHand",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44C],
                        isSkinToneSupport: true,
                        searchKey: "oKHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90C],
                        isSkinToneSupport: true,
                        searchKey: "pinchedFingers",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90F],
                        isSkinToneSupport: true,
                        searchKey: "pinchingHand",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x270C, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "victoryHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91E],
                        isSkinToneSupport: true,
                        searchKey: "crossedFingers",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF0],
                        isSkinToneSupport: true,
                        searchKey: "handWithIndexFingerAndThumbCrossed",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91F],
                        isSkinToneSupport: true,
                        searchKey: "loveYouGesture",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F918],
                        isSkinToneSupport: true,
                        searchKey: "signOfTheHorns",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F919],
                        isSkinToneSupport: true,
                        searchKey: "callMeHand",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F448],
                        isSkinToneSupport: true,
                        searchKey: "backhandIndexPointingLeft",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F449],
                        isSkinToneSupport: true,
                        searchKey: "backhandIndexPointingRight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F446],
                        isSkinToneSupport: true,
                        searchKey: "backhandIndexPointingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F595],
                        isSkinToneSupport: true,
                        searchKey: "middleFinger",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F447],
                        isSkinToneSupport: true,
                        searchKey: "backhandIndexPointingDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x261D, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "indexPointingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF5],
                        isSkinToneSupport: true,
                        searchKey: "indexPointingAtTheViewer",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44D],
                        isSkinToneSupport: true,
                        searchKey: "thumbsUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44E],
                        isSkinToneSupport: true,
                        searchKey: "thumbsDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x270A],
                        isSkinToneSupport: true,
                        searchKey: "raisedFist",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44A],
                        isSkinToneSupport: true,
                        searchKey: "oncomingFist",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91B],
                        isSkinToneSupport: true,
                        searchKey: "leftFacingFist",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91C],
                        isSkinToneSupport: true,
                        searchKey: "rightFacingFist",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44F],
                        isSkinToneSupport: true,
                        searchKey: "clappingHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64C],
                        isSkinToneSupport: true,
                        searchKey: "raisingHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF6],
                        isSkinToneSupport: true,
                        searchKey: "heartHands",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F450],
                        isSkinToneSupport: true,
                        searchKey: "openHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F932],
                        isSkinToneSupport: true,
                        searchKey: "palmsUpTogether",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91D],
                        isSkinToneSupport: false,
                        searchKey: "handshake",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64F],
                        isSkinToneSupport: true,
                        searchKey: "foldedHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x270D, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "writingHand",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F485],
                        isSkinToneSupport: true,
                        searchKey: "nailPolish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F933],
                        isSkinToneSupport: true,
                        searchKey: "selfie",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AA],
                        isSkinToneSupport: true,
                        searchKey: "flexedBiceps",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BE],
                        isSkinToneSupport: false,
                        searchKey: "mechanicalArm",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BF],
                        isSkinToneSupport: false,
                        searchKey: "mechanicalLeg",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B5],
                        isSkinToneSupport: true,
                        searchKey: "leg",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B6],
                        isSkinToneSupport: true,
                        searchKey: "foot",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F442],
                        isSkinToneSupport: true,
                        searchKey: "ear",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BB],
                        isSkinToneSupport: true,
                        searchKey: "earWithHearingAid",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F443],
                        isSkinToneSupport: true,
                        searchKey: "nose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E0],
                        isSkinToneSupport: false,
                        searchKey: "brain",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC0],
                        isSkinToneSupport: false,
                        searchKey: "anatomicalHeart",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC1],
                        isSkinToneSupport: false,
                        searchKey: "lungs",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B7],
                        isSkinToneSupport: false,
                        searchKey: "tooth",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B4],
                        isSkinToneSupport: false,
                        searchKey: "bone",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F440],
                        isSkinToneSupport: false,
                        searchKey: "eyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F441, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "eye",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F445],
                        isSkinToneSupport: false,
                        searchKey: "tongue",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F444],
                        isSkinToneSupport: false,
                        searchKey: "mouth",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE6],
                        isSkinToneSupport: false,
                        searchKey: "bitingLip",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F476],
                        isSkinToneSupport: true,
                        searchKey: "baby",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D2],
                        isSkinToneSupport: true,
                        searchKey: "child",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F466],
                        isSkinToneSupport: true,
                        searchKey: "boy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F467],
                        isSkinToneSupport: true,
                        searchKey: "girl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1],
                        isSkinToneSupport: true,
                        searchKey: "person",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F471],
                        isSkinToneSupport: true,
                        searchKey: "personBlondHair",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468],
                        isSkinToneSupport: true,
                        searchKey: "man",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D4],
                        isSkinToneSupport: true,
                        searchKey: "personBeard",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D4, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manBeard",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D4, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanBeard",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B0],
                        isSkinToneSupport: true,
                        searchKey: "manRedHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B1],
                        isSkinToneSupport: true,
                        searchKey: "manCurlyHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B3],
                        isSkinToneSupport: true,
                        searchKey: "manWhiteHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B2],
                        isSkinToneSupport: true,
                        searchKey: "manBald",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469],
                        isSkinToneSupport: true,
                        searchKey: "woman",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B0],
                        isSkinToneSupport: true,
                        searchKey: "womanRedHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B0],
                        isSkinToneSupport: true,
                        searchKey: "personRedHair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B1],
                        isSkinToneSupport: true,
                        searchKey: "womanCurlyHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B1],
                        isSkinToneSupport: true,
                        searchKey: "personCurlyHair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B3],
                        isSkinToneSupport: true,
                        searchKey: "womanWhiteHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B3],
                        isSkinToneSupport: true,
                        searchKey: "personWhiteHair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B2],
                        isSkinToneSupport: true,
                        searchKey: "womanBald",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B2],
                        isSkinToneSupport: true,
                        searchKey: "personBald",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F471, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanBlondHair",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F471, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manBlondHair",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D3],
                        isSkinToneSupport: true,
                        searchKey: "olderPerson",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F474],
                        isSkinToneSupport: true,
                        searchKey: "oldMan",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F475],
                        isSkinToneSupport: true,
                        searchKey: "oldWoman",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64D],
                        isSkinToneSupport: true,
                        searchKey: "personFrowning",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64D, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manFrowning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64D, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanFrowning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64E],
                        isSkinToneSupport: true,
                        searchKey: "personPouting",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64E, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manPouting",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64E, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanPouting",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F645],
                        isSkinToneSupport: true,
                        searchKey: "personGesturingNO",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F645, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manGesturingNO",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F645, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanGesturingNO",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F646],
                        isSkinToneSupport: true,
                        searchKey: "personGesturingOK",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F646, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manGesturingOK",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F646, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanGesturingOK",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F481],
                        isSkinToneSupport: true,
                        searchKey: "personTippingHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F481, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manTippingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F481, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanTippingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64B],
                        isSkinToneSupport: true,
                        searchKey: "personRaisingHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64B, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manRaisingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64B, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanRaisingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CF],
                        isSkinToneSupport: true,
                        searchKey: "deafPerson",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CF, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "deafMan",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CF, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "deafWoman",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F647],
                        isSkinToneSupport: true,
                        searchKey: "personBowing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F647, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manBowing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F647, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanBowing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F926],
                        isSkinToneSupport: true,
                        searchKey: "personFacepalming",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F926, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manFacepalming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F926, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanFacepalming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F937],
                        isSkinToneSupport: true,
                        searchKey: "personShrugging",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F937, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manShrugging",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F937, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanShrugging",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x2695, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "healthWorker",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2695, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manHealthWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2695, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanHealthWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F393],
                        isSkinToneSupport: true,
                        searchKey: "student",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F393],
                        isSkinToneSupport: true,
                        searchKey: "manStudent",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F393],
                        isSkinToneSupport: true,
                        searchKey: "womanStudent",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3EB],
                        isSkinToneSupport: true,
                        searchKey: "teacher",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3EB],
                        isSkinToneSupport: true,
                        searchKey: "manTeacher",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3EB],
                        isSkinToneSupport: true,
                        searchKey: "womanTeacher",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x2696, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "judge",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2696, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manJudge",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2696, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanJudge",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F33E],
                        isSkinToneSupport: true,
                        searchKey: "farmer",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F33E],
                        isSkinToneSupport: true,
                        searchKey: "manFarmer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F33E],
                        isSkinToneSupport: true,
                        searchKey: "womanFarmer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F373],
                        isSkinToneSupport: true,
                        searchKey: "cook",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F373],
                        isSkinToneSupport: true,
                        searchKey: "manCook",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F373],
                        isSkinToneSupport: true,
                        searchKey: "womanCook",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F527],
                        isSkinToneSupport: true,
                        searchKey: "mechanic",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F527],
                        isSkinToneSupport: true,
                        searchKey: "manMechanic",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F527],
                        isSkinToneSupport: true,
                        searchKey: "womanMechanic",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3ED],
                        isSkinToneSupport: true,
                        searchKey: "factoryWorker",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3ED],
                        isSkinToneSupport: true,
                        searchKey: "manFactoryWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3ED],
                        isSkinToneSupport: true,
                        searchKey: "womanFactoryWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F4BC],
                        isSkinToneSupport: true,
                        searchKey: "officeWorker",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F4BC],
                        isSkinToneSupport: true,
                        searchKey: "manOfficeWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F4BC],
                        isSkinToneSupport: true,
                        searchKey: "womanOfficeWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F52C],
                        isSkinToneSupport: true,
                        searchKey: "scientist",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F52C],
                        isSkinToneSupport: true,
                        searchKey: "manScientist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F52C],
                        isSkinToneSupport: true,
                        searchKey: "womanScientist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F4BB],
                        isSkinToneSupport: true,
                        searchKey: "technologist",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F4BB],
                        isSkinToneSupport: true,
                        searchKey: "manTechnologist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F4BB],
                        isSkinToneSupport: true,
                        searchKey: "womanTechnologist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3A4],
                        isSkinToneSupport: true,
                        searchKey: "singer",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3A4],
                        isSkinToneSupport: true,
                        searchKey: "manSinger",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3A4],
                        isSkinToneSupport: true,
                        searchKey: "womanSinger",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3A8],
                        isSkinToneSupport: true,
                        searchKey: "artist",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3A8],
                        isSkinToneSupport: true,
                        searchKey: "manArtist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3A8],
                        isSkinToneSupport: true,
                        searchKey: "womanArtist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x2708, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "pilot",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2708, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manPilot",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2708, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanPilot",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F680],
                        isSkinToneSupport: true,
                        searchKey: "astronaut",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F680],
                        isSkinToneSupport: true,
                        searchKey: "manAstronaut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F680],
                        isSkinToneSupport: true,
                        searchKey: "womanAstronaut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F692],
                        isSkinToneSupport: true,
                        searchKey: "firefighter",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F692],
                        isSkinToneSupport: true,
                        searchKey: "manFirefighter",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F692],
                        isSkinToneSupport: true,
                        searchKey: "womanFirefighter",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46E],
                        isSkinToneSupport: true,
                        searchKey: "policeOfficer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46E, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manPoliceOfficer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46E, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanPoliceOfficer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F575, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "detective",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F575, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manDetective",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F575, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanDetective",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F482],
                        isSkinToneSupport: true,
                        searchKey: "guard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F482, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manGuard",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F482, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanGuard",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F977],
                        isSkinToneSupport: true,
                        searchKey: "ninja",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F477],
                        isSkinToneSupport: true,
                        searchKey: "constructionWorker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F477, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manConstructionWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F477, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanConstructionWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC5],
                        isSkinToneSupport: true,
                        searchKey: "personWithCrown",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F934],
                        isSkinToneSupport: true,
                        searchKey: "prince",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F478],
                        isSkinToneSupport: true,
                        searchKey: "princess",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F473],
                        isSkinToneSupport: true,
                        searchKey: "personWearingTurban",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F473, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manWearingTurban",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F473, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanWearingTurban",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F472],
                        isSkinToneSupport: true,
                        searchKey: "personWithSkullcap",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D5],
                        isSkinToneSupport: true,
                        searchKey: "womanWithHeadscarf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F935],
                        isSkinToneSupport: true,
                        searchKey: "personInTuxedo",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F935, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manInTuxedo",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F935, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanInTuxedo",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F470],
                        isSkinToneSupport: true,
                        searchKey: "personWithVeil",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F470, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manWithVeil",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F470, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanWithVeil",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F930],
                        isSkinToneSupport: true,
                        searchKey: "pregnantWoman",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC3],
                        isSkinToneSupport: true,
                        searchKey: "pregnantMan",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC4],
                        isSkinToneSupport: true,
                        searchKey: "pregnantPerson",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F931],
                        isSkinToneSupport: true,
                        searchKey: "breastFeeding",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F37C],
                        isSkinToneSupport: true,
                        searchKey: "womanFeedingBaby",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F37C],
                        isSkinToneSupport: true,
                        searchKey: "manFeedingBaby",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F37C],
                        isSkinToneSupport: true,
                        searchKey: "personFeedingBaby",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47C],
                        isSkinToneSupport: true,
                        searchKey: "babyAngel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F385],
                        isSkinToneSupport: true,
                        searchKey: "santaClaus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F936],
                        isSkinToneSupport: true,
                        searchKey: "mrsClaus",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F384],
                        isSkinToneSupport: true,
                        searchKey: "mxClaus",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B8],
                        isSkinToneSupport: true,
                        searchKey: "superhero",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B8, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manSuperhero",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B8, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanSuperhero",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B9],
                        isSkinToneSupport: true,
                        searchKey: "supervillain",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B9, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manSupervillain",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B9, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanSupervillain",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D9],
                        isSkinToneSupport: true,
                        searchKey: "mage",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D9, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manMage",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D9, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanMage",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DA],
                        isSkinToneSupport: true,
                        searchKey: "fairy",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DA, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manFairy",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DA, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanFairy",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DB],
                        isSkinToneSupport: true,
                        searchKey: "vampire",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DB, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manVampire",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DB, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanVampire",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DC],
                        isSkinToneSupport: true,
                        searchKey: "merperson",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DC, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "merman",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DC, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "mermaid",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DD],
                        isSkinToneSupport: true,
                        searchKey: "elf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DD, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manElf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DD, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanElf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DE],
                        isSkinToneSupport: false,
                        searchKey: "genie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DE, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "manGenie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DE, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "womanGenie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DF],
                        isSkinToneSupport: false,
                        searchKey: "zombie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DF, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "manZombie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DF, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "womanZombie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CC],
                        isSkinToneSupport: false,
                        searchKey: "troll",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F486],
                        isSkinToneSupport: true,
                        searchKey: "personGettingMassage",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F486, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manGettingMassage",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F486, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanGettingMassage",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F487],
                        isSkinToneSupport: true,
                        searchKey: "personGettingHaircut",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F487, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manGettingHaircut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F487, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanGettingHaircut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B6],
                        isSkinToneSupport: true,
                        searchKey: "personWalking",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B6, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manWalking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B6, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanWalking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CD],
                        isSkinToneSupport: true,
                        searchKey: "personStanding",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CD, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manStanding",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CD, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanStanding",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CE],
                        isSkinToneSupport: true,
                        searchKey: "personKneeling",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CE, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manKneeling",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CE, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanKneeling",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9AF],
                        isSkinToneSupport: true,
                        searchKey: "personWithWhiteCane",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9AF],
                        isSkinToneSupport: true,
                        searchKey: "manWithWhiteCane",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9AF],
                        isSkinToneSupport: true,
                        searchKey: "womanWithWhiteCane",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9BC],
                        isSkinToneSupport: true,
                        searchKey: "personInMotorizedWheelchair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9BC],
                        isSkinToneSupport: true,
                        searchKey: "manInMotorizedWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9BC],
                        isSkinToneSupport: true,
                        searchKey: "womanInMotorizedWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9BD],
                        isSkinToneSupport: true,
                        searchKey: "personInManualWheelchair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9BD],
                        isSkinToneSupport: true,
                        searchKey: "manInManualWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9BD],
                        isSkinToneSupport: true,
                        searchKey: "womanInManualWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C3],
                        isSkinToneSupport: true,
                        searchKey: "personRunning",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C3, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manRunning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C3, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanRunning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F483],
                        isSkinToneSupport: true,
                        searchKey: "womanDancing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F57A],
                        isSkinToneSupport: true,
                        searchKey: "manDancing",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F574, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "personInSuitLevitating",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46F],
                        isSkinToneSupport: false,
                        searchKey: "peopleWithBunnyEars",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46F, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "menWithBunnyEars",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46F, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "womenWithBunnyEars",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D6],
                        isSkinToneSupport: true,
                        searchKey: "personInSteamyRoom",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D6, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manInSteamyRoom",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D6, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanInSteamyRoom",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D7],
                        isSkinToneSupport: true,
                        searchKey: "personClimbing",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D7, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manClimbing",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D7, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanClimbing",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93A],
                        isSkinToneSupport: false,
                        searchKey: "personFencing",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C7],
                        isSkinToneSupport: true,
                        searchKey: "horseRacing",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F7, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "skier",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C2],
                        isSkinToneSupport: false,
                        searchKey: "snowboarder",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CC, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "personGolfing",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CC, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manGolfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CC, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanGolfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C4],
                        isSkinToneSupport: true,
                        searchKey: "personSurfing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C4, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manSurfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C4, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanSurfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A3],
                        isSkinToneSupport: true,
                        searchKey: "personRowingBoat",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A3, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manRowingBoat",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A3, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanRowingBoat",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CA],
                        isSkinToneSupport: true,
                        searchKey: "personSwimming",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CA, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manSwimming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CA, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanSwimming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F9, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "personBouncingBall",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F9, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manBouncingBall",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F9, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanBouncingBall",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CB, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "personLiftingWeights",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CB, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manLiftingWeights",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CB, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanLiftingWeights",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B4],
                        isSkinToneSupport: true,
                        searchKey: "personBiking",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B4, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B4, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B5],
                        isSkinToneSupport: true,
                        searchKey: "personMountainBiking",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B5, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manMountainBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B5, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanMountainBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F938],
                        isSkinToneSupport: true,
                        searchKey: "personCartwheeling",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F938, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manCartwheeling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F938, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanCartwheeling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93C],
                        isSkinToneSupport: false,
                        searchKey: "peopleWrestling",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93C, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "menWrestling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93C, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "womenWrestling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93D],
                        isSkinToneSupport: true,
                        searchKey: "personPlayingWaterPolo",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93D, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manPlayingWaterPolo",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93D, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanPlayingWaterPolo",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93E],
                        isSkinToneSupport: true,
                        searchKey: "personPlayingHandball",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93E, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manPlayingHandball",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93E, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanPlayingHandball",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F939],
                        isSkinToneSupport: true,
                        searchKey: "personJuggling",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F939, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manJuggling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F939, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanJuggling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D8],
                        isSkinToneSupport: true,
                        searchKey: "personInLotusPosition",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D8, 0x200D, 0x2642, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "manInLotusPosition",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D8, 0x200D, 0x2640, 0xFE0F],
                        isSkinToneSupport: true,
                        searchKey: "womanInLotusPosition",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C0],
                        isSkinToneSupport: true,
                        searchKey: "personTakingBath",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CC],
                        isSkinToneSupport: false,
                        searchKey: "personInBed",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F91D, 0x200D, 0x1F9D1],
                        isSkinToneSupport: false,
                        searchKey: "peopleHoldingHands",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46D],
                        isSkinToneSupport: false,
                        searchKey: "womenHoldingHands",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46B],
                        isSkinToneSupport: false,
                        searchKey: "womanAndManHoldingHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46C],
                        isSkinToneSupport: false,
                        searchKey: "menHoldingHands",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48F],
                        isSkinToneSupport: false,
                        searchKey: "kiss",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F48B, 0x200D, 0x1F468],
                        isSkinToneSupport: false,
                        searchKey: "kissWomanMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F48B, 0x200D, 0x1F468],
                        isSkinToneSupport: false,
                        searchKey: "kissManMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F48B, 0x200D, 0x1F469],
                        isSkinToneSupport: false,
                        searchKey: "kissWomanWoman",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F491],
                        isSkinToneSupport: false,
                        searchKey: "coupleWithHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F468],
                        isSkinToneSupport: false,
                        searchKey: "coupleWithHeartWomanMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F468],
                        isSkinToneSupport: false,
                        searchKey: "coupleWithHeartManMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F469],
                        isSkinToneSupport: false,
                        searchKey: "coupleWithHeartWomanWoman",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46A],
                        isSkinToneSupport: false,
                        searchKey: "family",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManWomanBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyManWomanGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManWomanGirlBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManWomanBoyBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyManWomanGirlGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManManBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyManManGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManManGirlBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManManBoyBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyManManGirlGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanWomanBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanWomanGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanWomanGirlBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanWomanBoyBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanWomanGirlGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManBoyBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyManGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyManGirlBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyManGirlGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanBoyBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanGirlBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        isSkinToneSupport: false,
                        searchKey: "familyWomanGirlGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5E3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "speakingHead",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F464],
                        isSkinToneSupport: false,
                        searchKey: "bustInSilhouette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F465],
                        isSkinToneSupport: false,
                        searchKey: "bustsInSilhouette",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC2],
                        isSkinToneSupport: false,
                        searchKey: "peopleHugging",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F463],
                        isSkinToneSupport: false,
                        searchKey: "footprints",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .nature),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F435],
                        isSkinToneSupport: false,
                        searchKey: "monkeyFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F412],
                        isSkinToneSupport: false,
                        searchKey: "monkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98D],
                        isSkinToneSupport: false,
                        searchKey: "gorilla",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A7],
                        isSkinToneSupport: false,
                        searchKey: "orangutan",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F436],
                        isSkinToneSupport: false,
                        searchKey: "dogFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F415],
                        isSkinToneSupport: false,
                        searchKey: "dog",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AE],
                        isSkinToneSupport: false,
                        searchKey: "guideDog",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F415, 0x200D, 0x1F9BA],
                        isSkinToneSupport: false,
                        searchKey: "serviceDog",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F429],
                        isSkinToneSupport: false,
                        searchKey: "poodle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43A],
                        isSkinToneSupport: false,
                        searchKey: "wolf",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98A],
                        isSkinToneSupport: false,
                        searchKey: "fox",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99D],
                        isSkinToneSupport: false,
                        searchKey: "raccoon",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F431],
                        isSkinToneSupport: false,
                        searchKey: "catFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F408],
                        isSkinToneSupport: false,
                        searchKey: "cat",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F408, 0x200D, 0x2B1B],
                        isSkinToneSupport: false,
                        searchKey: "blackCat",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F981],
                        isSkinToneSupport: false,
                        searchKey: "lion",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42F],
                        isSkinToneSupport: false,
                        searchKey: "tigerFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F405],
                        isSkinToneSupport: false,
                        searchKey: "tiger",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F406],
                        isSkinToneSupport: false,
                        searchKey: "leopard",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F434],
                        isSkinToneSupport: false,
                        searchKey: "horseFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FACE],
                        isSkinToneSupport: false,
                        searchKey: "moose",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FACF],
                        isSkinToneSupport: false,
                        searchKey: "donkey",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40E],
                        isSkinToneSupport: false,
                        searchKey: "horse",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F984],
                        isSkinToneSupport: false,
                        searchKey: "unicorn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F993],
                        isSkinToneSupport: false,
                        searchKey: "zebra",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98C],
                        isSkinToneSupport: false,
                        searchKey: "deer",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AC],
                        isSkinToneSupport: false,
                        searchKey: "bison",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42E],
                        isSkinToneSupport: false,
                        searchKey: "cowFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F402],
                        isSkinToneSupport: false,
                        searchKey: "ox",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F403],
                        isSkinToneSupport: false,
                        searchKey: "waterBuffalo",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F404],
                        isSkinToneSupport: false,
                        searchKey: "cow",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F437],
                        isSkinToneSupport: false,
                        searchKey: "pigFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F416],
                        isSkinToneSupport: false,
                        searchKey: "pig",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F417],
                        isSkinToneSupport: false,
                        searchKey: "boar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43D],
                        isSkinToneSupport: false,
                        searchKey: "pigNose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40F],
                        isSkinToneSupport: false,
                        searchKey: "ram",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F411],
                        isSkinToneSupport: false,
                        searchKey: "ewe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F410],
                        isSkinToneSupport: false,
                        searchKey: "goat",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42A],
                        isSkinToneSupport: false,
                        searchKey: "camel",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42B],
                        isSkinToneSupport: false,
                        searchKey: "twoHumpCamel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F999],
                        isSkinToneSupport: false,
                        searchKey: "llama",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F992],
                        isSkinToneSupport: false,
                        searchKey: "giraffe",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F418],
                        isSkinToneSupport: false,
                        searchKey: "elephant",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A3],
                        isSkinToneSupport: false,
                        searchKey: "mammoth",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98F],
                        isSkinToneSupport: false,
                        searchKey: "rhinoceros",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99B],
                        isSkinToneSupport: false,
                        searchKey: "hippopotamus",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42D],
                        isSkinToneSupport: false,
                        searchKey: "mouseFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F401],
                        isSkinToneSupport: false,
                        searchKey: "mouse",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F400],
                        isSkinToneSupport: false,
                        searchKey: "rat",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F439],
                        isSkinToneSupport: false,
                        searchKey: "hamster",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F430],
                        isSkinToneSupport: false,
                        searchKey: "rabbitFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F407],
                        isSkinToneSupport: false,
                        searchKey: "rabbit",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "chipmunk",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AB],
                        isSkinToneSupport: false,
                        searchKey: "beaver",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F994],
                        isSkinToneSupport: false,
                        searchKey: "hedgehog",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F987],
                        isSkinToneSupport: false,
                        searchKey: "bat",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43B],
                        isSkinToneSupport: false,
                        searchKey: "bear",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43B, 0x200D, 0x2744, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "polarBear",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F428],
                        isSkinToneSupport: false,
                        searchKey: "koala",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43C],
                        isSkinToneSupport: false,
                        searchKey: "panda",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A5],
                        isSkinToneSupport: false,
                        searchKey: "sloth",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A6],
                        isSkinToneSupport: false,
                        searchKey: "otter",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A8],
                        isSkinToneSupport: false,
                        searchKey: "skunk",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F998],
                        isSkinToneSupport: false,
                        searchKey: "kangaroo",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A1],
                        isSkinToneSupport: false,
                        searchKey: "badger",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43E],
                        isSkinToneSupport: false,
                        searchKey: "pawPrints",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F983],
                        isSkinToneSupport: false,
                        searchKey: "turkey",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F414],
                        isSkinToneSupport: false,
                        searchKey: "chicken",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F413],
                        isSkinToneSupport: false,
                        searchKey: "rooster",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F423],
                        isSkinToneSupport: false,
                        searchKey: "hatchingChick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F424],
                        isSkinToneSupport: false,
                        searchKey: "babyChick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F425],
                        isSkinToneSupport: false,
                        searchKey: "frontFacingBabyChick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F426],
                        isSkinToneSupport: false,
                        searchKey: "bird",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F427],
                        isSkinToneSupport: false,
                        searchKey: "penguin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54A, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "dove",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F985],
                        isSkinToneSupport: false,
                        searchKey: "eagle",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F986],
                        isSkinToneSupport: false,
                        searchKey: "duck",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A2],
                        isSkinToneSupport: false,
                        searchKey: "swan",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F989],
                        isSkinToneSupport: false,
                        searchKey: "owl",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A4],
                        isSkinToneSupport: false,
                        searchKey: "dodo",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB6],
                        isSkinToneSupport: false,
                        searchKey: "feather",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A9],
                        isSkinToneSupport: false,
                        searchKey: "flamingo",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99A],
                        isSkinToneSupport: false,
                        searchKey: "peacock",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99C],
                        isSkinToneSupport: false,
                        searchKey: "parrot",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABD],
                        isSkinToneSupport: false,
                        searchKey: "wing",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F426, 0x200D, 0x2B1B],
                        isSkinToneSupport: false,
                        searchKey: "blackBird",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABF],
                        isSkinToneSupport: false,
                        searchKey: "goose",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F438],
                        isSkinToneSupport: false,
                        searchKey: "frog",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40A],
                        isSkinToneSupport: false,
                        searchKey: "crocodile",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F422],
                        isSkinToneSupport: false,
                        searchKey: "turtle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98E],
                        isSkinToneSupport: false,
                        searchKey: "lizard",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40D],
                        isSkinToneSupport: false,
                        searchKey: "snake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F432],
                        isSkinToneSupport: false,
                        searchKey: "dragonFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F409],
                        isSkinToneSupport: false,
                        searchKey: "dragon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F995],
                        isSkinToneSupport: false,
                        searchKey: "sauropod",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F996],
                        isSkinToneSupport: false,
                        searchKey: "tRex",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F433],
                        isSkinToneSupport: false,
                        searchKey: "spoutingWhale",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40B],
                        isSkinToneSupport: false,
                        searchKey: "whale",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42C],
                        isSkinToneSupport: false,
                        searchKey: "dolphin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AD],
                        isSkinToneSupport: false,
                        searchKey: "seal",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41F],
                        isSkinToneSupport: false,
                        searchKey: "fish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F420],
                        isSkinToneSupport: false,
                        searchKey: "tropicalFish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F421],
                        isSkinToneSupport: false,
                        searchKey: "blowfish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F988],
                        isSkinToneSupport: false,
                        searchKey: "shark",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F419],
                        isSkinToneSupport: false,
                        searchKey: "octopus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41A],
                        isSkinToneSupport: false,
                        searchKey: "spiralShell",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB8],
                        isSkinToneSupport: false,
                        searchKey: "coral",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABC],
                        isSkinToneSupport: false,
                        searchKey: "jellyfish",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40C],
                        isSkinToneSupport: false,
                        searchKey: "snail",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98B],
                        isSkinToneSupport: false,
                        searchKey: "butterfly",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41B],
                        isSkinToneSupport: false,
                        searchKey: "bug",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41C],
                        isSkinToneSupport: false,
                        searchKey: "ant",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41D],
                        isSkinToneSupport: false,
                        searchKey: "honeybee",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB2],
                        isSkinToneSupport: false,
                        searchKey: "beetle",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41E],
                        isSkinToneSupport: false,
                        searchKey: "ladyBeetle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F997],
                        isSkinToneSupport: false,
                        searchKey: "cricket",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB3],
                        isSkinToneSupport: false,
                        searchKey: "cockroach",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F577, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "spider",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F578, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "spiderWeb",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F982],
                        isSkinToneSupport: false,
                        searchKey: "scorpion",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99F],
                        isSkinToneSupport: false,
                        searchKey: "mosquito",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB0],
                        isSkinToneSupport: false,
                        searchKey: "fly",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB1],
                        isSkinToneSupport: false,
                        searchKey: "worm",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A0],
                        isSkinToneSupport: false,
                        searchKey: "microbe",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F490],
                        isSkinToneSupport: false,
                        searchKey: "bouquet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F338],
                        isSkinToneSupport: false,
                        searchKey: "cherryBlossom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AE],
                        isSkinToneSupport: false,
                        searchKey: "whiteFlower",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB7],
                        isSkinToneSupport: false,
                        searchKey: "lotus",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F5, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rosette",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F339],
                        isSkinToneSupport: false,
                        searchKey: "rose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F940],
                        isSkinToneSupport: false,
                        searchKey: "wiltedFlower",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33A],
                        isSkinToneSupport: false,
                        searchKey: "hibiscus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33B],
                        isSkinToneSupport: false,
                        searchKey: "sunflower",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33C],
                        isSkinToneSupport: false,
                        searchKey: "blossom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F337],
                        isSkinToneSupport: false,
                        searchKey: "tulip",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABB],
                        isSkinToneSupport: false,
                        searchKey: "hyacinth",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F331],
                        isSkinToneSupport: false,
                        searchKey: "seedling",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB4],
                        isSkinToneSupport: false,
                        searchKey: "pottedPlant",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F332],
                        isSkinToneSupport: false,
                        searchKey: "evergreenTree",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F333],
                        isSkinToneSupport: false,
                        searchKey: "deciduousTree",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F334],
                        isSkinToneSupport: false,
                        searchKey: "palmTree",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F335],
                        isSkinToneSupport: false,
                        searchKey: "cactus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33E],
                        isSkinToneSupport: false,
                        searchKey: "sheafOfRice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33F],
                        isSkinToneSupport: false,
                        searchKey: "herb",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2618, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "shamrock",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F340],
                        isSkinToneSupport: false,
                        searchKey: "fourLeafClover",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F341],
                        isSkinToneSupport: false,
                        searchKey: "mapleLeaf",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F342],
                        isSkinToneSupport: false,
                        searchKey: "fallenLeaf",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F343],
                        isSkinToneSupport: false,
                        searchKey: "leafFlutteringInWind",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB9],
                        isSkinToneSupport: false,
                        searchKey: "emptyNest",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABA],
                        isSkinToneSupport: false,
                        searchKey: "nestWithEggs",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F344],
                        isSkinToneSupport: false,
                        searchKey: "mushroom",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .foodAndDrink),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F347],
                        isSkinToneSupport: false,
                        searchKey: "grapes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F348],
                        isSkinToneSupport: false,
                        searchKey: "melon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F349],
                        isSkinToneSupport: false,
                        searchKey: "watermelon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34A],
                        isSkinToneSupport: false,
                        searchKey: "tangerine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34B],
                        isSkinToneSupport: false,
                        searchKey: "lemon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34C],
                        isSkinToneSupport: false,
                        searchKey: "banana",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34D],
                        isSkinToneSupport: false,
                        searchKey: "pineapple",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96D],
                        isSkinToneSupport: false,
                        searchKey: "mango",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34E],
                        isSkinToneSupport: false,
                        searchKey: "redApple",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34F],
                        isSkinToneSupport: false,
                        searchKey: "greenApple",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F350],
                        isSkinToneSupport: false,
                        searchKey: "pear",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F351],
                        isSkinToneSupport: false,
                        searchKey: "peach",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F352],
                        isSkinToneSupport: false,
                        searchKey: "cherries",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F353],
                        isSkinToneSupport: false,
                        searchKey: "strawberry",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD0],
                        isSkinToneSupport: false,
                        searchKey: "blueberries",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95D],
                        isSkinToneSupport: false,
                        searchKey: "kiwiFruit",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F345],
                        isSkinToneSupport: false,
                        searchKey: "tomato",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD2],
                        isSkinToneSupport: false,
                        searchKey: "olive",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F965],
                        isSkinToneSupport: false,
                        searchKey: "coconut",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F951],
                        isSkinToneSupport: false,
                        searchKey: "avocado",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F346],
                        isSkinToneSupport: false,
                        searchKey: "eggplant",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F954],
                        isSkinToneSupport: false,
                        searchKey: "potato",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F955],
                        isSkinToneSupport: false,
                        searchKey: "carrot",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33D],
                        isSkinToneSupport: false,
                        searchKey: "earOfCorn",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F336, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "hotPepper",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD1],
                        isSkinToneSupport: false,
                        searchKey: "bellPepper",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F952],
                        isSkinToneSupport: false,
                        searchKey: "cucumber",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96C],
                        isSkinToneSupport: false,
                        searchKey: "leafyGreen",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F966],
                        isSkinToneSupport: false,
                        searchKey: "broccoli",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C4],
                        isSkinToneSupport: false,
                        searchKey: "garlic",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C5],
                        isSkinToneSupport: false,
                        searchKey: "onion",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95C],
                        isSkinToneSupport: false,
                        searchKey: "peanuts",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD8],
                        isSkinToneSupport: false,
                        searchKey: "beans",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F330],
                        isSkinToneSupport: false,
                        searchKey: "chestnut",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FADA],
                        isSkinToneSupport: false,
                        searchKey: "gingerRoot",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FADB],
                        isSkinToneSupport: false,
                        searchKey: "peaPod",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35E],
                        isSkinToneSupport: false,
                        searchKey: "bread",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F950],
                        isSkinToneSupport: false,
                        searchKey: "croissant",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F956],
                        isSkinToneSupport: false,
                        searchKey: "baguetteBread",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD3],
                        isSkinToneSupport: false,
                        searchKey: "flatbread",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F968],
                        isSkinToneSupport: false,
                        searchKey: "pretzel",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96F],
                        isSkinToneSupport: false,
                        searchKey: "bagel",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95E],
                        isSkinToneSupport: false,
                        searchKey: "pancakes",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C7],
                        isSkinToneSupport: false,
                        searchKey: "waffle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C0],
                        isSkinToneSupport: false,
                        searchKey: "cheeseWedge",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F356],
                        isSkinToneSupport: false,
                        searchKey: "meatOnBone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F357],
                        isSkinToneSupport: false,
                        searchKey: "poultryLeg",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F969],
                        isSkinToneSupport: false,
                        searchKey: "cutOfMeat",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F953],
                        isSkinToneSupport: false,
                        searchKey: "bacon",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F354],
                        isSkinToneSupport: false,
                        searchKey: "hamburger",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35F],
                        isSkinToneSupport: false,
                        searchKey: "frenchFries",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F355],
                        isSkinToneSupport: false,
                        searchKey: "pizza",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32D],
                        isSkinToneSupport: false,
                        searchKey: "hotDog",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96A],
                        isSkinToneSupport: false,
                        searchKey: "sandwich",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32E],
                        isSkinToneSupport: false,
                        searchKey: "taco",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32F],
                        isSkinToneSupport: false,
                        searchKey: "burrito",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD4],
                        isSkinToneSupport: false,
                        searchKey: "tamale",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F959],
                        isSkinToneSupport: false,
                        searchKey: "stuffedFlatbread",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C6],
                        isSkinToneSupport: false,
                        searchKey: "falafel",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95A],
                        isSkinToneSupport: false,
                        searchKey: "egg",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F373],
                        isSkinToneSupport: false,
                        searchKey: "cooking",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F958],
                        isSkinToneSupport: false,
                        searchKey: "shallowPanOfFood",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F372],
                        isSkinToneSupport: false,
                        searchKey: "potOfFood",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD5],
                        isSkinToneSupport: false,
                        searchKey: "fondue",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F963],
                        isSkinToneSupport: false,
                        searchKey: "bowlWithSpoon",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F957],
                        isSkinToneSupport: false,
                        searchKey: "greenSalad",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37F],
                        isSkinToneSupport: false,
                        searchKey: "popcorn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C8],
                        isSkinToneSupport: false,
                        searchKey: "butter",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C2],
                        isSkinToneSupport: false,
                        searchKey: "salt",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96B],
                        isSkinToneSupport: false,
                        searchKey: "cannedFood",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F371],
                        isSkinToneSupport: false,
                        searchKey: "bentoBox",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F358],
                        isSkinToneSupport: false,
                        searchKey: "riceCracker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F359],
                        isSkinToneSupport: false,
                        searchKey: "riceBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35A],
                        isSkinToneSupport: false,
                        searchKey: "cookedRice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35B],
                        isSkinToneSupport: false,
                        searchKey: "curryRice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35C],
                        isSkinToneSupport: false,
                        searchKey: "steamingBowl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35D],
                        isSkinToneSupport: false,
                        searchKey: "spaghetti",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F360],
                        isSkinToneSupport: false,
                        searchKey: "roastedSweetPotato",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F362],
                        isSkinToneSupport: false,
                        searchKey: "oden",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F363],
                        isSkinToneSupport: false,
                        searchKey: "sushi",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F364],
                        isSkinToneSupport: false,
                        searchKey: "friedShrimp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F365],
                        isSkinToneSupport: false,
                        searchKey: "fishCakeWithSwirl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96E],
                        isSkinToneSupport: false,
                        searchKey: "moonCake",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F361],
                        isSkinToneSupport: false,
                        searchKey: "dango",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95F],
                        isSkinToneSupport: false,
                        searchKey: "dumpling",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F960],
                        isSkinToneSupport: false,
                        searchKey: "fortuneCookie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F961],
                        isSkinToneSupport: false,
                        searchKey: "takeoutBox",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F980],
                        isSkinToneSupport: false,
                        searchKey: "crab",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99E],
                        isSkinToneSupport: false,
                        searchKey: "lobster",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F990],
                        isSkinToneSupport: false,
                        searchKey: "shrimp",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F991],
                        isSkinToneSupport: false,
                        searchKey: "squid",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AA],
                        isSkinToneSupport: false,
                        searchKey: "oyster",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F366],
                        isSkinToneSupport: false,
                        searchKey: "softIceCream",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F367],
                        isSkinToneSupport: false,
                        searchKey: "shavedIce",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F368],
                        isSkinToneSupport: false,
                        searchKey: "iceCream",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F369],
                        isSkinToneSupport: false,
                        searchKey: "doughnut",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36A],
                        isSkinToneSupport: false,
                        searchKey: "cookie",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F382],
                        isSkinToneSupport: false,
                        searchKey: "birthdayCake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F370],
                        isSkinToneSupport: false,
                        searchKey: "shortcake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C1],
                        isSkinToneSupport: false,
                        searchKey: "cupcake",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F967],
                        isSkinToneSupport: false,
                        searchKey: "pie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36B],
                        isSkinToneSupport: false,
                        searchKey: "chocolateBar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36C],
                        isSkinToneSupport: false,
                        searchKey: "candy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36D],
                        isSkinToneSupport: false,
                        searchKey: "lollipop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36E],
                        isSkinToneSupport: false,
                        searchKey: "custard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36F],
                        isSkinToneSupport: false,
                        searchKey: "honeyPot",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37C],
                        isSkinToneSupport: false,
                        searchKey: "babyBottle",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95B],
                        isSkinToneSupport: false,
                        searchKey: "glassOfMilk",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2615],
                        isSkinToneSupport: false,
                        searchKey: "hotBeverage",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD6],
                        isSkinToneSupport: false,
                        searchKey: "teapot",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F375],
                        isSkinToneSupport: false,
                        searchKey: "teacupWithoutHandle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F376],
                        isSkinToneSupport: false,
                        searchKey: "sake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37E],
                        isSkinToneSupport: false,
                        searchKey: "bottleWithPoppingCork",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F377],
                        isSkinToneSupport: false,
                        searchKey: "wineGlass",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F378],
                        isSkinToneSupport: false,
                        searchKey: "cocktailGlass",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F379],
                        isSkinToneSupport: false,
                        searchKey: "tropicalDrink",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37A],
                        isSkinToneSupport: false,
                        searchKey: "beerMug",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37B],
                        isSkinToneSupport: false,
                        searchKey: "clinkingBeerMugs",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F942],
                        isSkinToneSupport: false,
                        searchKey: "clinkingGlasses",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F943],
                        isSkinToneSupport: false,
                        searchKey: "tumblerGlass",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD7],
                        isSkinToneSupport: false,
                        searchKey: "pouringLiquid",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F964],
                        isSkinToneSupport: false,
                        searchKey: "cupWithStraw",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CB],
                        isSkinToneSupport: false,
                        searchKey: "bubbleTea",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C3],
                        isSkinToneSupport: false,
                        searchKey: "beverageBox",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C9],
                        isSkinToneSupport: false,
                        searchKey: "mate",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CA],
                        isSkinToneSupport: false,
                        searchKey: "ice",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F962],
                        isSkinToneSupport: false,
                        searchKey: "chopsticks",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37D, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "forkAndKnifeWithPlate",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F374],
                        isSkinToneSupport: false,
                        searchKey: "forkAndKnife",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F944],
                        isSkinToneSupport: false,
                        searchKey: "spoon",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52A],
                        isSkinToneSupport: false,
                        searchKey: "kitchenKnife",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD9],
                        isSkinToneSupport: false,
                        searchKey: "jar",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3FA],
                        isSkinToneSupport: false,
                        searchKey: "amphora",
                        unicodeVersion: 1.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .activity),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F383],
                        isSkinToneSupport: false,
                        searchKey: "jackOLantern",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F384],
                        isSkinToneSupport: false,
                        searchKey: "christmasTree",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F386],
                        isSkinToneSupport: false,
                        searchKey: "fireworks",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F387],
                        isSkinToneSupport: false,
                        searchKey: "sparkler",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E8],
                        isSkinToneSupport: false,
                        searchKey: "firecracker",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2728],
                        isSkinToneSupport: false,
                        searchKey: "sparkles",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F388],
                        isSkinToneSupport: false,
                        searchKey: "balloon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F389],
                        isSkinToneSupport: false,
                        searchKey: "partyPopper",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38A],
                        isSkinToneSupport: false,
                        searchKey: "confettiBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38B],
                        isSkinToneSupport: false,
                        searchKey: "tanabataTree",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38D],
                        isSkinToneSupport: false,
                        searchKey: "pineDecoration",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38E],
                        isSkinToneSupport: false,
                        searchKey: "japaneseDolls",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38F],
                        isSkinToneSupport: false,
                        searchKey: "carpStreamer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F390],
                        isSkinToneSupport: false,
                        searchKey: "windChime",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F391],
                        isSkinToneSupport: false,
                        searchKey: "moonViewingCeremony",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E7],
                        isSkinToneSupport: false,
                        searchKey: "redEnvelope",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F380],
                        isSkinToneSupport: false,
                        searchKey: "ribbon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F381],
                        isSkinToneSupport: false,
                        searchKey: "wrappedGift",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F397, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "reminderRibbon",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "admissionTickets",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AB],
                        isSkinToneSupport: false,
                        searchKey: "ticket",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F396, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "militaryMedal",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C6],
                        isSkinToneSupport: false,
                        searchKey: "trophy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C5],
                        isSkinToneSupport: false,
                        searchKey: "sportsMedal",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F947],
                        isSkinToneSupport: false,
                        searchKey: "1stPlaceMedal",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F948],
                        isSkinToneSupport: false,
                        searchKey: "2ndPlaceMedal",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F949],
                        isSkinToneSupport: false,
                        searchKey: "3rdPlaceMedal",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26BD],
                        isSkinToneSupport: false,
                        searchKey: "soccerBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26BE],
                        isSkinToneSupport: false,
                        searchKey: "baseball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94E],
                        isSkinToneSupport: false,
                        searchKey: "softball",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C0],
                        isSkinToneSupport: false,
                        searchKey: "basketball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D0],
                        isSkinToneSupport: false,
                        searchKey: "volleyball",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C8],
                        isSkinToneSupport: false,
                        searchKey: "americanFootball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C9],
                        isSkinToneSupport: false,
                        searchKey: "rugbyFootball",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BE],
                        isSkinToneSupport: false,
                        searchKey: "tennis",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94F],
                        isSkinToneSupport: false,
                        searchKey: "flyingDisc",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B3],
                        isSkinToneSupport: false,
                        searchKey: "bowling",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CF],
                        isSkinToneSupport: false,
                        searchKey: "cricketGame",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D1],
                        isSkinToneSupport: false,
                        searchKey: "fieldHockey",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D2],
                        isSkinToneSupport: false,
                        searchKey: "iceHockey",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94D],
                        isSkinToneSupport: false,
                        searchKey: "lacrosse",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D3],
                        isSkinToneSupport: false,
                        searchKey: "pingPong",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F8],
                        isSkinToneSupport: false,
                        searchKey: "badminton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94A],
                        isSkinToneSupport: false,
                        searchKey: "boxingGlove",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94B],
                        isSkinToneSupport: false,
                        searchKey: "martialArtsUniform",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F945],
                        isSkinToneSupport: false,
                        searchKey: "goalNet",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F3],
                        isSkinToneSupport: false,
                        searchKey: "flagInHole",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "iceSkate",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A3],
                        isSkinToneSupport: false,
                        searchKey: "fishingPole",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93F],
                        isSkinToneSupport: false,
                        searchKey: "divingMask",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BD],
                        isSkinToneSupport: false,
                        searchKey: "runningShirt",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BF],
                        isSkinToneSupport: false,
                        searchKey: "skis",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F7],
                        isSkinToneSupport: false,
                        searchKey: "sled",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94C],
                        isSkinToneSupport: false,
                        searchKey: "curlingStone",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AF],
                        isSkinToneSupport: false,
                        searchKey: "bullseye",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA80],
                        isSkinToneSupport: false,
                        searchKey: "yoYo",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA81],
                        isSkinToneSupport: false,
                        searchKey: "kite",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52B],
                        isSkinToneSupport: false,
                        searchKey: "waterPistol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B1],
                        isSkinToneSupport: false,
                        searchKey: "pool8Ball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52E],
                        isSkinToneSupport: false,
                        searchKey: "crystalBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA84],
                        isSkinToneSupport: false,
                        searchKey: "magicWand",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AE],
                        isSkinToneSupport: false,
                        searchKey: "videoGame",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F579, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "joystick",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B0],
                        isSkinToneSupport: false,
                        searchKey: "slotMachine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B2],
                        isSkinToneSupport: false,
                        searchKey: "gameDie",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E9],
                        isSkinToneSupport: false,
                        searchKey: "puzzlePiece",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F8],
                        isSkinToneSupport: false,
                        searchKey: "teddyBear",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA85],
                        isSkinToneSupport: false,
                        searchKey: "piñata",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA9],
                        isSkinToneSupport: false,
                        searchKey: "mirrorBall",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA86],
                        isSkinToneSupport: false,
                        searchKey: "nestingDolls",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2660, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "spadeSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2665, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "heartSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2666, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "diamondSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2663, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "clubSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x265F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "chessPawn",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F0CF],
                        isSkinToneSupport: false,
                        searchKey: "joker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F004],
                        isSkinToneSupport: false,
                        searchKey: "mahjongRedDragon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B4],
                        isSkinToneSupport: false,
                        searchKey: "flowerPlayingCards",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AD],
                        isSkinToneSupport: false,
                        searchKey: "performingArts",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5BC, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "framedPicture",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A8],
                        isSkinToneSupport: false,
                        searchKey: "artistPalette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F5],
                        isSkinToneSupport: false,
                        searchKey: "thread",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA1],
                        isSkinToneSupport: false,
                        searchKey: "sewingNeedle",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F6],
                        isSkinToneSupport: false,
                        searchKey: "yarn",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA2],
                        isSkinToneSupport: false,
                        searchKey: "knot",
                        unicodeVersion: 13.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .travelAndPlaces),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F30D],
                        isSkinToneSupport: false,
                        searchKey: "globeShowingEuropeAfrica",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30E],
                        isSkinToneSupport: false,
                        searchKey: "globeShowingAmericas",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30F],
                        isSkinToneSupport: false,
                        searchKey: "globeShowingAsiaAustralia",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F310],
                        isSkinToneSupport: false,
                        searchKey: "globeWithMeridians",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FA, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "worldMap",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FE],
                        isSkinToneSupport: false,
                        searchKey: "mapOfJapan",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9ED],
                        isSkinToneSupport: false,
                        searchKey: "compass",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D4, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "snowCappedMountain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F0, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "mountain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30B],
                        isSkinToneSupport: false,
                        searchKey: "volcano",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FB],
                        isSkinToneSupport: false,
                        searchKey: "mountFuji",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D5, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "camping",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D6, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "beachWithUmbrella",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DC, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "desert",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DD, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "desertIsland",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DE, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "nationalPark",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DF, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "stadium",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DB, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "classicalBuilding",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D7, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "buildingConstruction",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F1],
                        isSkinToneSupport: false,
                        searchKey: "brick",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA8],
                        isSkinToneSupport: false,
                        searchKey: "rock",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB5],
                        isSkinToneSupport: false,
                        searchKey: "wood",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D6],
                        isSkinToneSupport: false,
                        searchKey: "hut",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "houses",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DA, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "derelictHouse",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E0],
                        isSkinToneSupport: false,
                        searchKey: "house",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E1],
                        isSkinToneSupport: false,
                        searchKey: "houseWithGarden",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E2],
                        isSkinToneSupport: false,
                        searchKey: "officeBuilding",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E3],
                        isSkinToneSupport: false,
                        searchKey: "japanesePostOffice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E4],
                        isSkinToneSupport: false,
                        searchKey: "postOffice",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E5],
                        isSkinToneSupport: false,
                        searchKey: "hospital",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E6],
                        isSkinToneSupport: false,
                        searchKey: "bank",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E8],
                        isSkinToneSupport: false,
                        searchKey: "hotel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E9],
                        isSkinToneSupport: false,
                        searchKey: "loveHotel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EA],
                        isSkinToneSupport: false,
                        searchKey: "convenienceStore",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EB],
                        isSkinToneSupport: false,
                        searchKey: "school",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EC],
                        isSkinToneSupport: false,
                        searchKey: "departmentStore",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3ED],
                        isSkinToneSupport: false,
                        searchKey: "factory",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EF],
                        isSkinToneSupport: false,
                        searchKey: "japaneseCastle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F0],
                        isSkinToneSupport: false,
                        searchKey: "castle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F492],
                        isSkinToneSupport: false,
                        searchKey: "wedding",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FC],
                        isSkinToneSupport: false,
                        searchKey: "tokyoTower",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FD],
                        isSkinToneSupport: false,
                        searchKey: "statueOfLiberty",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26EA],
                        isSkinToneSupport: false,
                        searchKey: "church",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54C],
                        isSkinToneSupport: false,
                        searchKey: "mosque",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D5],
                        isSkinToneSupport: false,
                        searchKey: "hinduTemple",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54D],
                        isSkinToneSupport: false,
                        searchKey: "synagogue",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26E9, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "shintoShrine",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54B],
                        isSkinToneSupport: false,
                        searchKey: "kaaba",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F2],
                        isSkinToneSupport: false,
                        searchKey: "fountain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26FA],
                        isSkinToneSupport: false,
                        searchKey: "tent",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F301],
                        isSkinToneSupport: false,
                        searchKey: "foggy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F303],
                        isSkinToneSupport: false,
                        searchKey: "nightWithStars",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D9, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cityscape",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F304],
                        isSkinToneSupport: false,
                        searchKey: "sunriseOverMountains",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F305],
                        isSkinToneSupport: false,
                        searchKey: "sunrise",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F306],
                        isSkinToneSupport: false,
                        searchKey: "cityscapeAtDusk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F307],
                        isSkinToneSupport: false,
                        searchKey: "sunset",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F309],
                        isSkinToneSupport: false,
                        searchKey: "bridgeAtNight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2668, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "hotSprings",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A0],
                        isSkinToneSupport: false,
                        searchKey: "carouselHorse",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DD],
                        isSkinToneSupport: false,
                        searchKey: "playgroundSlide",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A1],
                        isSkinToneSupport: false,
                        searchKey: "ferrisWheel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A2],
                        isSkinToneSupport: false,
                        searchKey: "rollerCoaster",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F488],
                        isSkinToneSupport: false,
                        searchKey: "barberPole",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AA],
                        isSkinToneSupport: false,
                        searchKey: "circusTent",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F682],
                        isSkinToneSupport: false,
                        searchKey: "locomotive",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F683],
                        isSkinToneSupport: false,
                        searchKey: "railwayCar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F684],
                        isSkinToneSupport: false,
                        searchKey: "highSpeedTrain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F685],
                        isSkinToneSupport: false,
                        searchKey: "bulletTrain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F686],
                        isSkinToneSupport: false,
                        searchKey: "train",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F687],
                        isSkinToneSupport: false,
                        searchKey: "metro",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F688],
                        isSkinToneSupport: false,
                        searchKey: "lightRail",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F689],
                        isSkinToneSupport: false,
                        searchKey: "station",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68A],
                        isSkinToneSupport: false,
                        searchKey: "tram",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69D],
                        isSkinToneSupport: false,
                        searchKey: "monorail",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69E],
                        isSkinToneSupport: false,
                        searchKey: "mountainRailway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68B],
                        isSkinToneSupport: false,
                        searchKey: "tramCar",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68C],
                        isSkinToneSupport: false,
                        searchKey: "bus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68D],
                        isSkinToneSupport: false,
                        searchKey: "oncomingBus",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68E],
                        isSkinToneSupport: false,
                        searchKey: "trolleybus",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F690],
                        isSkinToneSupport: false,
                        searchKey: "minibus",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F691],
                        isSkinToneSupport: false,
                        searchKey: "ambulance",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F692],
                        isSkinToneSupport: false,
                        searchKey: "fireEngine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F693],
                        isSkinToneSupport: false,
                        searchKey: "policeCar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F694],
                        isSkinToneSupport: false,
                        searchKey: "oncomingPoliceCar",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F695],
                        isSkinToneSupport: false,
                        searchKey: "taxi",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F696],
                        isSkinToneSupport: false,
                        searchKey: "oncomingTaxi",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F697],
                        isSkinToneSupport: false,
                        searchKey: "automobile",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F698],
                        isSkinToneSupport: false,
                        searchKey: "oncomingAutomobile",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F699],
                        isSkinToneSupport: false,
                        searchKey: "sportUtilityVehicle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6FB],
                        isSkinToneSupport: false,
                        searchKey: "pickupTruck",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69A],
                        isSkinToneSupport: false,
                        searchKey: "deliveryTruck",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69B],
                        isSkinToneSupport: false,
                        searchKey: "articulatedLorry",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69C],
                        isSkinToneSupport: false,
                        searchKey: "tractor",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CE, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "racingCar",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CD, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "motorcycle",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F5],
                        isSkinToneSupport: false,
                        searchKey: "motorScooter",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BD],
                        isSkinToneSupport: false,
                        searchKey: "manualWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BC],
                        isSkinToneSupport: false,
                        searchKey: "motorizedWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6FA],
                        isSkinToneSupport: false,
                        searchKey: "autoRickshaw",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B2],
                        isSkinToneSupport: false,
                        searchKey: "bicycle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F4],
                        isSkinToneSupport: false,
                        searchKey: "kickScooter",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F9],
                        isSkinToneSupport: false,
                        searchKey: "skateboard",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6FC],
                        isSkinToneSupport: false,
                        searchKey: "rollerSkate",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68F],
                        isSkinToneSupport: false,
                        searchKey: "busStop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "motorway",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E4, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "railwayTrack",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E2, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "oilDrum",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26FD],
                        isSkinToneSupport: false,
                        searchKey: "fuelPump",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DE],
                        isSkinToneSupport: false,
                        searchKey: "wheel",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A8],
                        isSkinToneSupport: false,
                        searchKey: "policeCarLight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A5],
                        isSkinToneSupport: false,
                        searchKey: "horizontalTrafficLight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A6],
                        isSkinToneSupport: false,
                        searchKey: "verticalTrafficLight",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D1],
                        isSkinToneSupport: false,
                        searchKey: "stopSign",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A7],
                        isSkinToneSupport: false,
                        searchKey: "construction",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2693],
                        isSkinToneSupport: false,
                        searchKey: "anchor",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DF],
                        isSkinToneSupport: false,
                        searchKey: "ringBuoy",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F5],
                        isSkinToneSupport: false,
                        searchKey: "sailboat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F6],
                        isSkinToneSupport: false,
                        searchKey: "canoe",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A4],
                        isSkinToneSupport: false,
                        searchKey: "speedboat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "passengerShip",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F4, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "ferry",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E5, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "motorBoat",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A2],
                        isSkinToneSupport: false,
                        searchKey: "ship",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2708, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "airplane",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E9, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "smallAirplane",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6EB],
                        isSkinToneSupport: false,
                        searchKey: "airplaneDeparture",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6EC],
                        isSkinToneSupport: false,
                        searchKey: "airplaneArrival",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA82],
                        isSkinToneSupport: false,
                        searchKey: "parachute",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BA],
                        isSkinToneSupport: false,
                        searchKey: "seat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F681],
                        isSkinToneSupport: false,
                        searchKey: "helicopter",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69F],
                        isSkinToneSupport: false,
                        searchKey: "suspensionRailway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A0],
                        isSkinToneSupport: false,
                        searchKey: "mountainCableway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A1],
                        isSkinToneSupport: false,
                        searchKey: "aerialTramway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F0, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "satellite",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F680],
                        isSkinToneSupport: false,
                        searchKey: "rocket",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F8],
                        isSkinToneSupport: false,
                        searchKey: "flyingSaucer",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CE, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "bellhopBell",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F3],
                        isSkinToneSupport: false,
                        searchKey: "luggage",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x231B],
                        isSkinToneSupport: false,
                        searchKey: "hourglassDone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F3],
                        isSkinToneSupport: false,
                        searchKey: "hourglassNotDone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x231A],
                        isSkinToneSupport: false,
                        searchKey: "watch",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F0],
                        isSkinToneSupport: false,
                        searchKey: "alarmClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "stopwatch",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F2, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "timerClock",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F570, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "mantelpieceClock",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55B],
                        isSkinToneSupport: false,
                        searchKey: "twelveOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F567],
                        isSkinToneSupport: false,
                        searchKey: "twelveThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F550],
                        isSkinToneSupport: false,
                        searchKey: "oneOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55C],
                        isSkinToneSupport: false,
                        searchKey: "oneThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F551],
                        isSkinToneSupport: false,
                        searchKey: "twoOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55D],
                        isSkinToneSupport: false,
                        searchKey: "twoThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F552],
                        isSkinToneSupport: false,
                        searchKey: "threeOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55E],
                        isSkinToneSupport: false,
                        searchKey: "threeThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F553],
                        isSkinToneSupport: false,
                        searchKey: "fourOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55F],
                        isSkinToneSupport: false,
                        searchKey: "fourThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F554],
                        isSkinToneSupport: false,
                        searchKey: "fiveOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F560],
                        isSkinToneSupport: false,
                        searchKey: "fiveThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F555],
                        isSkinToneSupport: false,
                        searchKey: "sixOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F561],
                        isSkinToneSupport: false,
                        searchKey: "sixThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F556],
                        isSkinToneSupport: false,
                        searchKey: "sevenOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F562],
                        isSkinToneSupport: false,
                        searchKey: "sevenThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F557],
                        isSkinToneSupport: false,
                        searchKey: "eightOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F563],
                        isSkinToneSupport: false,
                        searchKey: "eightThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F558],
                        isSkinToneSupport: false,
                        searchKey: "nineOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F564],
                        isSkinToneSupport: false,
                        searchKey: "nineThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F559],
                        isSkinToneSupport: false,
                        searchKey: "tenOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F565],
                        isSkinToneSupport: false,
                        searchKey: "tenThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55A],
                        isSkinToneSupport: false,
                        searchKey: "elevenOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F566],
                        isSkinToneSupport: false,
                        searchKey: "elevenThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F311],
                        isSkinToneSupport: false,
                        searchKey: "newMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F312],
                        isSkinToneSupport: false,
                        searchKey: "waxingCrescentMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F313],
                        isSkinToneSupport: false,
                        searchKey: "firstQuarterMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F314],
                        isSkinToneSupport: false,
                        searchKey: "waxingGibbousMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F315],
                        isSkinToneSupport: false,
                        searchKey: "fullMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F316],
                        isSkinToneSupport: false,
                        searchKey: "waningGibbousMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F317],
                        isSkinToneSupport: false,
                        searchKey: "lastQuarterMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F318],
                        isSkinToneSupport: false,
                        searchKey: "waningCrescentMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F319],
                        isSkinToneSupport: false,
                        searchKey: "crescentMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31A],
                        isSkinToneSupport: false,
                        searchKey: "newMoonFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31B],
                        isSkinToneSupport: false,
                        searchKey: "firstQuarterMoonFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31C],
                        isSkinToneSupport: false,
                        searchKey: "lastQuarterMoonFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F321, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "thermometer",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2600, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "sun",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31D],
                        isSkinToneSupport: false,
                        searchKey: "fullMoonFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31E],
                        isSkinToneSupport: false,
                        searchKey: "sunWithFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA90],
                        isSkinToneSupport: false,
                        searchKey: "ringedPlanet",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B50],
                        isSkinToneSupport: false,
                        searchKey: "star",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31F],
                        isSkinToneSupport: false,
                        searchKey: "glowingStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F320],
                        isSkinToneSupport: false,
                        searchKey: "shootingStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30C],
                        isSkinToneSupport: false,
                        searchKey: "milkyWay",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2601, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cloud",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26C5],
                        isSkinToneSupport: false,
                        searchKey: "sunBehindCloud",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26C8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cloudWithLightningAndRain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F324, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "sunBehindSmallCloud",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F325, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "sunBehindLargeCloud",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F326, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "sunBehindRainCloud",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F327, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cloudWithRain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F328, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cloudWithSnow",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F329, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cloudWithLightning",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32A, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "tornado",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32B, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "fog",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32C, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "windFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F300],
                        isSkinToneSupport: false,
                        searchKey: "cyclone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F308],
                        isSkinToneSupport: false,
                        searchKey: "rainbow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F302],
                        isSkinToneSupport: false,
                        searchKey: "closedUmbrella",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2602, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "umbrella",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2614],
                        isSkinToneSupport: false,
                        searchKey: "umbrellaWithRainDrops",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "umbrellaOnGround",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26A1],
                        isSkinToneSupport: false,
                        searchKey: "highVoltage",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2744, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "snowflake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2603, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "snowman",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26C4],
                        isSkinToneSupport: false,
                        searchKey: "snowmanWithoutSnow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2604, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "comet",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F525],
                        isSkinToneSupport: false,
                        searchKey: "fire",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A7],
                        isSkinToneSupport: false,
                        searchKey: "droplet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30A],
                        isSkinToneSupport: false,
                        searchKey: "waterWave",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .objects),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F453],
                        isSkinToneSupport: false,
                        searchKey: "glasses",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F576, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "sunglasses",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97D],
                        isSkinToneSupport: false,
                        searchKey: "goggles",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97C],
                        isSkinToneSupport: false,
                        searchKey: "labCoat",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BA],
                        isSkinToneSupport: false,
                        searchKey: "safetyVest",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F454],
                        isSkinToneSupport: false,
                        searchKey: "necktie",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F455],
                        isSkinToneSupport: false,
                        searchKey: "tShirt",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F456],
                        isSkinToneSupport: false,
                        searchKey: "jeans",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E3],
                        isSkinToneSupport: false,
                        searchKey: "scarf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E4],
                        isSkinToneSupport: false,
                        searchKey: "gloves",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E5],
                        isSkinToneSupport: false,
                        searchKey: "coat",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E6],
                        isSkinToneSupport: false,
                        searchKey: "socks",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F457],
                        isSkinToneSupport: false,
                        searchKey: "dress",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F458],
                        isSkinToneSupport: false,
                        searchKey: "kimono",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97B],
                        isSkinToneSupport: false,
                        searchKey: "sari",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA71],
                        isSkinToneSupport: false,
                        searchKey: "onePieceSwimsuit",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA72],
                        isSkinToneSupport: false,
                        searchKey: "briefs",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA73],
                        isSkinToneSupport: false,
                        searchKey: "shorts",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F459],
                        isSkinToneSupport: false,
                        searchKey: "bikini",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45A],
                        isSkinToneSupport: false,
                        searchKey: "womanSClothes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAD],
                        isSkinToneSupport: false,
                        searchKey: "foldingHandFan",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45B],
                        isSkinToneSupport: false,
                        searchKey: "purse",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45C],
                        isSkinToneSupport: false,
                        searchKey: "handbag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45D],
                        isSkinToneSupport: false,
                        searchKey: "clutchBag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CD, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "shoppingBags",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F392],
                        isSkinToneSupport: false,
                        searchKey: "backpack",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA74],
                        isSkinToneSupport: false,
                        searchKey: "thongSandal",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45E],
                        isSkinToneSupport: false,
                        searchKey: "manSShoe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45F],
                        isSkinToneSupport: false,
                        searchKey: "runningShoe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97E],
                        isSkinToneSupport: false,
                        searchKey: "hikingBoot",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97F],
                        isSkinToneSupport: false,
                        searchKey: "flatShoe",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F460],
                        isSkinToneSupport: false,
                        searchKey: "highHeeledShoe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F461],
                        isSkinToneSupport: false,
                        searchKey: "womanSSandal",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA70],
                        isSkinToneSupport: false,
                        searchKey: "balletShoes",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F462],
                        isSkinToneSupport: false,
                        searchKey: "womanSBoot",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAE],
                        isSkinToneSupport: false,
                        searchKey: "hairPick",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F451],
                        isSkinToneSupport: false,
                        searchKey: "crown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F452],
                        isSkinToneSupport: false,
                        searchKey: "womanSHat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A9],
                        isSkinToneSupport: false,
                        searchKey: "topHat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F393],
                        isSkinToneSupport: false,
                        searchKey: "graduationCap",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E2],
                        isSkinToneSupport: false,
                        searchKey: "billedCap",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA96],
                        isSkinToneSupport: false,
                        searchKey: "militaryHelmet",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26D1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rescueWorkerSHelmet",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FF],
                        isSkinToneSupport: false,
                        searchKey: "prayerBeads",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F484],
                        isSkinToneSupport: false,
                        searchKey: "lipstick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48D],
                        isSkinToneSupport: false,
                        searchKey: "ring",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48E],
                        isSkinToneSupport: false,
                        searchKey: "gemStone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F507],
                        isSkinToneSupport: false,
                        searchKey: "mutedSpeaker",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F508],
                        isSkinToneSupport: false,
                        searchKey: "speakerLowVolume",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F509],
                        isSkinToneSupport: false,
                        searchKey: "speakerMediumVolume",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50A],
                        isSkinToneSupport: false,
                        searchKey: "speakerHighVolume",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E2],
                        isSkinToneSupport: false,
                        searchKey: "loudspeaker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E3],
                        isSkinToneSupport: false,
                        searchKey: "megaphone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EF],
                        isSkinToneSupport: false,
                        searchKey: "postalHorn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F514],
                        isSkinToneSupport: false,
                        searchKey: "bell",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F515],
                        isSkinToneSupport: false,
                        searchKey: "bellWithSlash",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BC],
                        isSkinToneSupport: false,
                        searchKey: "musicalScore",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B5],
                        isSkinToneSupport: false,
                        searchKey: "musicalNote",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B6],
                        isSkinToneSupport: false,
                        searchKey: "musicalNotes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F399, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "studioMicrophone",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39A, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "levelSlider",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39B, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "controlKnobs",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A4],
                        isSkinToneSupport: false,
                        searchKey: "microphone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A7],
                        isSkinToneSupport: false,
                        searchKey: "headphone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FB],
                        isSkinToneSupport: false,
                        searchKey: "radio",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B7],
                        isSkinToneSupport: false,
                        searchKey: "saxophone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA97],
                        isSkinToneSupport: false,
                        searchKey: "accordion",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B8],
                        isSkinToneSupport: false,
                        searchKey: "guitar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B9],
                        isSkinToneSupport: false,
                        searchKey: "musicalKeyboard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BA],
                        isSkinToneSupport: false,
                        searchKey: "trumpet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BB],
                        isSkinToneSupport: false,
                        searchKey: "violin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA95],
                        isSkinToneSupport: false,
                        searchKey: "banjo",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F941],
                        isSkinToneSupport: false,
                        searchKey: "drum",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA98],
                        isSkinToneSupport: false,
                        searchKey: "longDrum",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA87],
                        isSkinToneSupport: false,
                        searchKey: "maracas",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA88],
                        isSkinToneSupport: false,
                        searchKey: "flute",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F1],
                        isSkinToneSupport: false,
                        searchKey: "mobilePhone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F2],
                        isSkinToneSupport: false,
                        searchKey: "mobilePhoneWithArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x260E, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "telephone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DE],
                        isSkinToneSupport: false,
                        searchKey: "telephoneReceiver",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DF],
                        isSkinToneSupport: false,
                        searchKey: "pager",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E0],
                        isSkinToneSupport: false,
                        searchKey: "faxMachine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50B],
                        isSkinToneSupport: false,
                        searchKey: "battery",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAB],
                        isSkinToneSupport: false,
                        searchKey: "lowBattery",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50C],
                        isSkinToneSupport: false,
                        searchKey: "electricPlug",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BB],
                        isSkinToneSupport: false,
                        searchKey: "laptop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5A5, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "desktopComputer",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5A8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "printer",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2328, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "keyboard",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5B1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "computerMouse",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5B2, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "trackball",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BD],
                        isSkinToneSupport: false,
                        searchKey: "computerDisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BE],
                        isSkinToneSupport: false,
                        searchKey: "floppyDisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BF],
                        isSkinToneSupport: false,
                        searchKey: "opticalDisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C0],
                        isSkinToneSupport: false,
                        searchKey: "dvd",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EE],
                        isSkinToneSupport: false,
                        searchKey: "abacus",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A5],
                        isSkinToneSupport: false,
                        searchKey: "movieCamera",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39E, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "filmFrames",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FD, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "filmProjector",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AC],
                        isSkinToneSupport: false,
                        searchKey: "clapperBoard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FA],
                        isSkinToneSupport: false,
                        searchKey: "television",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F7],
                        isSkinToneSupport: false,
                        searchKey: "camera",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F8],
                        isSkinToneSupport: false,
                        searchKey: "cameraWithFlash",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F9],
                        isSkinToneSupport: false,
                        searchKey: "videoCamera",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FC],
                        isSkinToneSupport: false,
                        searchKey: "videocassette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50D],
                        isSkinToneSupport: false,
                        searchKey: "magnifyingGlassTiltedLeft",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50E],
                        isSkinToneSupport: false,
                        searchKey: "magnifyingGlassTiltedRight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F56F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "candle",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A1],
                        isSkinToneSupport: false,
                        searchKey: "lightBulb",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F526],
                        isSkinToneSupport: false,
                        searchKey: "flashlight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EE],
                        isSkinToneSupport: false,
                        searchKey: "redPaperLantern",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA94],
                        isSkinToneSupport: false,
                        searchKey: "diyaLamp",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D4],
                        isSkinToneSupport: false,
                        searchKey: "notebookWithDecorativeCover",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D5],
                        isSkinToneSupport: false,
                        searchKey: "closedBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D6],
                        isSkinToneSupport: false,
                        searchKey: "openBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D7],
                        isSkinToneSupport: false,
                        searchKey: "greenBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D8],
                        isSkinToneSupport: false,
                        searchKey: "blueBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D9],
                        isSkinToneSupport: false,
                        searchKey: "orangeBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DA],
                        isSkinToneSupport: false,
                        searchKey: "books",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D3],
                        isSkinToneSupport: false,
                        searchKey: "notebook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D2],
                        isSkinToneSupport: false,
                        searchKey: "ledger",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C3],
                        isSkinToneSupport: false,
                        searchKey: "pageWithCurl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DC],
                        isSkinToneSupport: false,
                        searchKey: "scroll",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C4],
                        isSkinToneSupport: false,
                        searchKey: "pageFacingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F0],
                        isSkinToneSupport: false,
                        searchKey: "newspaper",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5DE, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rolledUpNewspaper",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D1],
                        isSkinToneSupport: false,
                        searchKey: "bookmarkTabs",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F516],
                        isSkinToneSupport: false,
                        searchKey: "bookmark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F7, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "label",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B0],
                        isSkinToneSupport: false,
                        searchKey: "moneyBag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA99],
                        isSkinToneSupport: false,
                        searchKey: "coin",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B4],
                        isSkinToneSupport: false,
                        searchKey: "yenBanknote",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B5],
                        isSkinToneSupport: false,
                        searchKey: "dollarBanknote",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B6],
                        isSkinToneSupport: false,
                        searchKey: "euroBanknote",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B7],
                        isSkinToneSupport: false,
                        searchKey: "poundBanknote",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B8],
                        isSkinToneSupport: false,
                        searchKey: "moneyWithWings",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B3],
                        isSkinToneSupport: false,
                        searchKey: "creditCard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FE],
                        isSkinToneSupport: false,
                        searchKey: "receipt",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B9],
                        isSkinToneSupport: false,
                        searchKey: "chartIncreasingWithYen",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2709, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "envelope",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E7],
                        isSkinToneSupport: false,
                        searchKey: "eMail",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E8],
                        isSkinToneSupport: false,
                        searchKey: "incomingEnvelope",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E9],
                        isSkinToneSupport: false,
                        searchKey: "envelopeWithArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E4],
                        isSkinToneSupport: false,
                        searchKey: "outboxTray",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E5],
                        isSkinToneSupport: false,
                        searchKey: "inboxTray",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E6],
                        isSkinToneSupport: false,
                        searchKey: "package",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EB],
                        isSkinToneSupport: false,
                        searchKey: "closedMailboxWithRaisedFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EA],
                        isSkinToneSupport: false,
                        searchKey: "closedMailboxWithLoweredFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EC],
                        isSkinToneSupport: false,
                        searchKey: "openMailboxWithRaisedFlag",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4ED],
                        isSkinToneSupport: false,
                        searchKey: "openMailboxWithLoweredFlag",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EE],
                        isSkinToneSupport: false,
                        searchKey: "postbox",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5F3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "ballotBoxWithBallot",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x270F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "pencil",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2712, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "blackNib",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58B, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "fountainPen",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58A, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "pen",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58C, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "paintbrush",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58D, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "crayon",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DD],
                        isSkinToneSupport: false,
                        searchKey: "memo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BC],
                        isSkinToneSupport: false,
                        searchKey: "briefcase",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C1],
                        isSkinToneSupport: false,
                        searchKey: "fileFolder",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C2],
                        isSkinToneSupport: false,
                        searchKey: "openFileFolder",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5C2, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cardIndexDividers",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C5],
                        isSkinToneSupport: false,
                        searchKey: "calendar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C6],
                        isSkinToneSupport: false,
                        searchKey: "tearOffCalendar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5D2, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "spiralNotepad",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5D3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "spiralCalendar",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C7],
                        isSkinToneSupport: false,
                        searchKey: "cardIndex",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C8],
                        isSkinToneSupport: false,
                        searchKey: "chartIncreasing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C9],
                        isSkinToneSupport: false,
                        searchKey: "chartDecreasing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CA],
                        isSkinToneSupport: false,
                        searchKey: "barChart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CB],
                        isSkinToneSupport: false,
                        searchKey: "clipboard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CC],
                        isSkinToneSupport: false,
                        searchKey: "pushpin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CD],
                        isSkinToneSupport: false,
                        searchKey: "roundPushpin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CE],
                        isSkinToneSupport: false,
                        searchKey: "paperclip",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F587, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "linkedPaperclips",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CF],
                        isSkinToneSupport: false,
                        searchKey: "straightRuler",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D0],
                        isSkinToneSupport: false,
                        searchKey: "triangularRuler",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2702, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "scissors",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5C3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "cardFileBox",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5C4, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "fileCabinet",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5D1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "wastebasket",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F512],
                        isSkinToneSupport: false,
                        searchKey: "locked",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F513],
                        isSkinToneSupport: false,
                        searchKey: "unlocked",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50F],
                        isSkinToneSupport: false,
                        searchKey: "lockedWithPen",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F510],
                        isSkinToneSupport: false,
                        searchKey: "lockedWithKey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F511],
                        isSkinToneSupport: false,
                        searchKey: "key",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5DD, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "oldKey",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F528],
                        isSkinToneSupport: false,
                        searchKey: "hammer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA93],
                        isSkinToneSupport: false,
                        searchKey: "axe",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26CF, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "pick",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2692, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "hammerAndPick",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E0, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "hammerAndWrench",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5E1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "dagger",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2694, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "crossedSwords",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A3],
                        isSkinToneSupport: false,
                        searchKey: "bomb",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA83],
                        isSkinToneSupport: false,
                        searchKey: "boomerang",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F9],
                        isSkinToneSupport: false,
                        searchKey: "bowAndArrow",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "shield",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9A],
                        isSkinToneSupport: false,
                        searchKey: "carpentrySaw",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F527],
                        isSkinToneSupport: false,
                        searchKey: "wrench",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9B],
                        isSkinToneSupport: false,
                        searchKey: "screwdriver",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F529],
                        isSkinToneSupport: false,
                        searchKey: "nutAndBolt",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2699, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "gear",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5DC, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "clamp",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2696, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "balanceScale",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AF],
                        isSkinToneSupport: false,
                        searchKey: "whiteCane",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F517],
                        isSkinToneSupport: false,
                        searchKey: "link",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26D3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "chains",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9D],
                        isSkinToneSupport: false,
                        searchKey: "hook",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F0],
                        isSkinToneSupport: false,
                        searchKey: "toolbox",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F2],
                        isSkinToneSupport: false,
                        searchKey: "magnet",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9C],
                        isSkinToneSupport: false,
                        searchKey: "ladder",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2697, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "alembic",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EA],
                        isSkinToneSupport: false,
                        searchKey: "testTube",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EB],
                        isSkinToneSupport: false,
                        searchKey: "petriDish",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EC],
                        isSkinToneSupport: false,
                        searchKey: "dna",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52C],
                        isSkinToneSupport: false,
                        searchKey: "microscope",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52D],
                        isSkinToneSupport: false,
                        searchKey: "telescope",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E1],
                        isSkinToneSupport: false,
                        searchKey: "satelliteAntenna",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F489],
                        isSkinToneSupport: false,
                        searchKey: "syringe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA78],
                        isSkinToneSupport: false,
                        searchKey: "dropOfBlood",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48A],
                        isSkinToneSupport: false,
                        searchKey: "pill",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA79],
                        isSkinToneSupport: false,
                        searchKey: "adhesiveBandage",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA7C],
                        isSkinToneSupport: false,
                        searchKey: "crutch",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA7A],
                        isSkinToneSupport: false,
                        searchKey: "stethoscope",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA7B],
                        isSkinToneSupport: false,
                        searchKey: "xRay",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AA],
                        isSkinToneSupport: false,
                        searchKey: "door",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D7],
                        isSkinToneSupport: false,
                        searchKey: "elevator",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9E],
                        isSkinToneSupport: false,
                        searchKey: "mirror",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9F],
                        isSkinToneSupport: false,
                        searchKey: "window",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CF, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "bed",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CB, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "couchAndLamp",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA91],
                        isSkinToneSupport: false,
                        searchKey: "chair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BD],
                        isSkinToneSupport: false,
                        searchKey: "toilet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA0],
                        isSkinToneSupport: false,
                        searchKey: "plunger",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BF],
                        isSkinToneSupport: false,
                        searchKey: "shower",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C1],
                        isSkinToneSupport: false,
                        searchKey: "bathtub",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA4],
                        isSkinToneSupport: false,
                        searchKey: "mouseTrap",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA92],
                        isSkinToneSupport: false,
                        searchKey: "razor",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F4],
                        isSkinToneSupport: false,
                        searchKey: "lotionBottle",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F7],
                        isSkinToneSupport: false,
                        searchKey: "safetyPin",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F9],
                        isSkinToneSupport: false,
                        searchKey: "broom",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FA],
                        isSkinToneSupport: false,
                        searchKey: "basket",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FB],
                        isSkinToneSupport: false,
                        searchKey: "rollOfPaper",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA3],
                        isSkinToneSupport: false,
                        searchKey: "bucket",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FC],
                        isSkinToneSupport: false,
                        searchKey: "soap",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE7],
                        isSkinToneSupport: false,
                        searchKey: "bubbles",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA5],
                        isSkinToneSupport: false,
                        searchKey: "toothbrush",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FD],
                        isSkinToneSupport: false,
                        searchKey: "sponge",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EF],
                        isSkinToneSupport: false,
                        searchKey: "fireExtinguisher",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D2],
                        isSkinToneSupport: false,
                        searchKey: "shoppingCart",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AC],
                        isSkinToneSupport: false,
                        searchKey: "cigarette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26B0, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "coffin",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA6],
                        isSkinToneSupport: false,
                        searchKey: "headstone",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26B1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "funeralUrn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FF],
                        isSkinToneSupport: false,
                        searchKey: "nazarAmulet",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAC],
                        isSkinToneSupport: false,
                        searchKey: "hamsa",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FF],
                        isSkinToneSupport: false,
                        searchKey: "moai",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA7],
                        isSkinToneSupport: false,
                        searchKey: "placard",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAA],
                        isSkinToneSupport: false,
                        searchKey: "identificationCard",
                        unicodeVersion: 14.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .symbols),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F3E7],
                        isSkinToneSupport: false,
                        searchKey: "aTMSign",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AE],
                        isSkinToneSupport: false,
                        searchKey: "litterInBinSign",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B0],
                        isSkinToneSupport: false,
                        searchKey: "potableWater",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x267F],
                        isSkinToneSupport: false,
                        searchKey: "wheelchairSymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B9],
                        isSkinToneSupport: false,
                        searchKey: "menSRoom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BA],
                        isSkinToneSupport: false,
                        searchKey: "womenSRoom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BB],
                        isSkinToneSupport: false,
                        searchKey: "restroom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BC],
                        isSkinToneSupport: false,
                        searchKey: "babySymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BE],
                        isSkinToneSupport: false,
                        searchKey: "waterCloset",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C2],
                        isSkinToneSupport: false,
                        searchKey: "passportControl",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C3],
                        isSkinToneSupport: false,
                        searchKey: "customs",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C4],
                        isSkinToneSupport: false,
                        searchKey: "baggageClaim",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C5],
                        isSkinToneSupport: false,
                        searchKey: "leftLuggage",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26A0, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "warning",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B8],
                        isSkinToneSupport: false,
                        searchKey: "childrenCrossing",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26D4],
                        isSkinToneSupport: false,
                        searchKey: "noEntry",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AB],
                        isSkinToneSupport: false,
                        searchKey: "prohibited",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B3],
                        isSkinToneSupport: false,
                        searchKey: "noBicycles",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AD],
                        isSkinToneSupport: false,
                        searchKey: "noSmoking",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AF],
                        isSkinToneSupport: false,
                        searchKey: "noLittering",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B1],
                        isSkinToneSupport: false,
                        searchKey: "nonPotableWater",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B7],
                        isSkinToneSupport: false,
                        searchKey: "noPedestrians",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F5],
                        isSkinToneSupport: false,
                        searchKey: "noMobilePhones",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51E],
                        isSkinToneSupport: false,
                        searchKey: "noOneUnderEighteen",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2622, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "radioactive",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2623, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "biohazard",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B06, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "upArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2197, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "upRightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x27A1, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2198, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "downRightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B07, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "downArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2199, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "downLeftArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B05, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "leftArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2196, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "upLeftArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2195, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "upDownArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2194, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "leftRightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x21A9, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rightArrowCurvingLeft",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x21AA, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "leftArrowCurvingRight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2934, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rightArrowCurvingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2935, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "rightArrowCurvingDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F503],
                        isSkinToneSupport: false,
                        searchKey: "clockwiseVerticalArrows",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F504],
                        isSkinToneSupport: false,
                        searchKey: "counterclockwiseArrowsButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F519],
                        isSkinToneSupport: false,
                        searchKey: "bACKArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51A],
                        isSkinToneSupport: false,
                        searchKey: "eNDArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51B],
                        isSkinToneSupport: false,
                        searchKey: "oNArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51C],
                        isSkinToneSupport: false,
                        searchKey: "sOONArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51D],
                        isSkinToneSupport: false,
                        searchKey: "tOPArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D0],
                        isSkinToneSupport: false,
                        searchKey: "placeOfWorship",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x269B, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "atomSymbol",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F549, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "om",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2721, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "starOfDavid",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2638, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "wheelOfDharma",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x262F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "yinYang",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x271D, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "latinCross",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2626, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "orthodoxCross",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x262A, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "starAndCrescent",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x262E, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "peaceSymbol",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54E],
                        isSkinToneSupport: false,
                        searchKey: "menorah",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52F],
                        isSkinToneSupport: false,
                        searchKey: "dottedSixPointedStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAF],
                        isSkinToneSupport: false,
                        searchKey: "khanda",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2648],
                        isSkinToneSupport: false,
                        searchKey: "aries",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2649],
                        isSkinToneSupport: false,
                        searchKey: "taurus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264A],
                        isSkinToneSupport: false,
                        searchKey: "gemini",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264B],
                        isSkinToneSupport: false,
                        searchKey: "cancer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264C],
                        isSkinToneSupport: false,
                        searchKey: "leo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264D],
                        isSkinToneSupport: false,
                        searchKey: "virgo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264E],
                        isSkinToneSupport: false,
                        searchKey: "libra",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264F],
                        isSkinToneSupport: false,
                        searchKey: "scorpio",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2650],
                        isSkinToneSupport: false,
                        searchKey: "sagittarius",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2651],
                        isSkinToneSupport: false,
                        searchKey: "capricorn",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2652],
                        isSkinToneSupport: false,
                        searchKey: "aquarius",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2653],
                        isSkinToneSupport: false,
                        searchKey: "pisces",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26CE],
                        isSkinToneSupport: false,
                        searchKey: "ophiuchus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F500],
                        isSkinToneSupport: false,
                        searchKey: "shuffleTracksButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F501],
                        isSkinToneSupport: false,
                        searchKey: "repeatButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F502],
                        isSkinToneSupport: false,
                        searchKey: "repeatSingleButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x25B6, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "playButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23E9],
                        isSkinToneSupport: false,
                        searchKey: "fastForwardButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23ED, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "nextTrackButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EF, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "playOrPauseButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x25C0, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "reverseButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EA],
                        isSkinToneSupport: false,
                        searchKey: "fastReverseButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EE, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "lastTrackButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53C],
                        isSkinToneSupport: false,
                        searchKey: "upwardsButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EB],
                        isSkinToneSupport: false,
                        searchKey: "fastUpButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53D],
                        isSkinToneSupport: false,
                        searchKey: "downwardsButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EC],
                        isSkinToneSupport: false,
                        searchKey: "fastDownButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F8, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "pauseButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F9, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "stopButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23FA, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "recordButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23CF, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "ejectButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A6],
                        isSkinToneSupport: false,
                        searchKey: "cinema",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F505],
                        isSkinToneSupport: false,
                        searchKey: "dimButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F506],
                        isSkinToneSupport: false,
                        searchKey: "brightButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F6],
                        isSkinToneSupport: false,
                        searchKey: "antennaBars",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DC],
                        isSkinToneSupport: false,
                        searchKey: "wireless",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F3],
                        isSkinToneSupport: false,
                        searchKey: "vibrationMode",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F4],
                        isSkinToneSupport: false,
                        searchKey: "mobilePhoneOff",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2640, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "femaleSign",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2642, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "maleSign",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26A7, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "transgenderSymbol",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2716, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "multiply",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2795],
                        isSkinToneSupport: false,
                        searchKey: "plus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2796],
                        isSkinToneSupport: false,
                        searchKey: "minus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2797],
                        isSkinToneSupport: false,
                        searchKey: "divide",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7F0],
                        isSkinToneSupport: false,
                        searchKey: "heavyEqualsSign",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x267E, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "infinity",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x203C, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "doubleExclamationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2049, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "exclamationQuestionMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2753],
                        isSkinToneSupport: false,
                        searchKey: "redQuestionMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2754],
                        isSkinToneSupport: false,
                        searchKey: "whiteQuestionMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2755],
                        isSkinToneSupport: false,
                        searchKey: "whiteExclamationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2757],
                        isSkinToneSupport: false,
                        searchKey: "redExclamationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x3030, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "wavyDash",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B1],
                        isSkinToneSupport: false,
                        searchKey: "currencyExchange",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B2],
                        isSkinToneSupport: false,
                        searchKey: "heavyDollarSign",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2695, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "medicalSymbol",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x267B, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "recyclingSymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x269C, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "fleurDeLis",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F531],
                        isSkinToneSupport: false,
                        searchKey: "tridentEmblem",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DB],
                        isSkinToneSupport: false,
                        searchKey: "nameBadge",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F530],
                        isSkinToneSupport: false,
                        searchKey: "japaneseSymbolForBeginner",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B55],
                        isSkinToneSupport: false,
                        searchKey: "hollowRedCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2705],
                        isSkinToneSupport: false,
                        searchKey: "checkMarkButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2611, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "checkBoxWithCheck",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2714, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "checkMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x274C],
                        isSkinToneSupport: false,
                        searchKey: "crossMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x274E],
                        isSkinToneSupport: false,
                        searchKey: "crossMarkButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x27B0],
                        isSkinToneSupport: false,
                        searchKey: "curlyLoop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x27BF],
                        isSkinToneSupport: false,
                        searchKey: "doubleCurlyLoop",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x303D, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "partAlternationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2733, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "eightSpokedAsterisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2734, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "eightPointedStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2747, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "sparkle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x00A9, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "copyright",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x00AE, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "registered",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2122, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "tradeMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0023, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x002A, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x0030, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap0",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0031, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap1",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0032, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap2",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0033, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap3",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0034, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap4",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0035, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap5",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0036, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap6",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0037, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap7",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0038, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap8",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0039, 0xFE0F, 0x20E3],
                        isSkinToneSupport: false,
                        searchKey: "keycap9",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51F],
                        isSkinToneSupport: false,
                        searchKey: "keycap10",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F520],
                        isSkinToneSupport: false,
                        searchKey: "inputLatinUppercase",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F521],
                        isSkinToneSupport: false,
                        searchKey: "inputLatinLowercase",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F522],
                        isSkinToneSupport: false,
                        searchKey: "inputNumbers",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F523],
                        isSkinToneSupport: false,
                        searchKey: "inputSymbols",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F524],
                        isSkinToneSupport: false,
                        searchKey: "inputLatinLetters",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F170, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "aButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F18E],
                        isSkinToneSupport: false,
                        searchKey: "aBButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F171, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "bButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F191],
                        isSkinToneSupport: false,
                        searchKey: "cLButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F192],
                        isSkinToneSupport: false,
                        searchKey: "cOOLButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F193],
                        isSkinToneSupport: false,
                        searchKey: "fREEButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2139, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "information",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F194],
                        isSkinToneSupport: false,
                        searchKey: "iDButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x24C2, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "circledM",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F195],
                        isSkinToneSupport: false,
                        searchKey: "nEWButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F196],
                        isSkinToneSupport: false,
                        searchKey: "nGButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F17E, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "oButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F197],
                        isSkinToneSupport: false,
                        searchKey: "oKButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F17F, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "pButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F198],
                        isSkinToneSupport: false,
                        searchKey: "sOSButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F199],
                        isSkinToneSupport: false,
                        searchKey: "uPButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F19A],
                        isSkinToneSupport: false,
                        searchKey: "vSButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F201],
                        isSkinToneSupport: false,
                        searchKey: "japaneseHereButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F202, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "japaneseServiceChargeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F237, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "japaneseMonthlyAmountButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F236],
                        isSkinToneSupport: false,
                        searchKey: "japaneseNotFreeOfChargeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F22F],
                        isSkinToneSupport: false,
                        searchKey: "japaneseReservedButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F250],
                        isSkinToneSupport: false,
                        searchKey: "japaneseBargainButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F239],
                        isSkinToneSupport: false,
                        searchKey: "japaneseDiscountButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F21A],
                        isSkinToneSupport: false,
                        searchKey: "japaneseFreeOfChargeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F232],
                        isSkinToneSupport: false,
                        searchKey: "japaneseProhibitedButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F251],
                        isSkinToneSupport: false,
                        searchKey: "japaneseAcceptableButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F238],
                        isSkinToneSupport: false,
                        searchKey: "japaneseApplicationButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F234],
                        isSkinToneSupport: false,
                        searchKey: "japanesePassingGradeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F233],
                        isSkinToneSupport: false,
                        searchKey: "japaneseVacancyButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x3297, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "japaneseCongratulationsButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x3299, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "japaneseSecretButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F23A],
                        isSkinToneSupport: false,
                        searchKey: "japaneseOpenForBusinessButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F235],
                        isSkinToneSupport: false,
                        searchKey: "japaneseNoVacancyButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F534],
                        isSkinToneSupport: false,
                        searchKey: "redCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E0],
                        isSkinToneSupport: false,
                        searchKey: "orangeCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E1],
                        isSkinToneSupport: false,
                        searchKey: "yellowCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E2],
                        isSkinToneSupport: false,
                        searchKey: "greenCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F535],
                        isSkinToneSupport: false,
                        searchKey: "blueCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E3],
                        isSkinToneSupport: false,
                        searchKey: "purpleCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E4],
                        isSkinToneSupport: false,
                        searchKey: "brownCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26AB],
                        isSkinToneSupport: false,
                        searchKey: "blackCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26AA],
                        isSkinToneSupport: false,
                        searchKey: "whiteCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E5],
                        isSkinToneSupport: false,
                        searchKey: "redSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E7],
                        isSkinToneSupport: false,
                        searchKey: "orangeSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E8],
                        isSkinToneSupport: false,
                        searchKey: "yellowSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E9],
                        isSkinToneSupport: false,
                        searchKey: "greenSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E6],
                        isSkinToneSupport: false,
                        searchKey: "blueSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7EA],
                        isSkinToneSupport: false,
                        searchKey: "purpleSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7EB],
                        isSkinToneSupport: false,
                        searchKey: "brownSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B1B],
                        isSkinToneSupport: false,
                        searchKey: "blackLargeSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B1C],
                        isSkinToneSupport: false,
                        searchKey: "whiteLargeSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FC, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "blackMediumSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FB, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "whiteMediumSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FE],
                        isSkinToneSupport: false,
                        searchKey: "blackMediumSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FD],
                        isSkinToneSupport: false,
                        searchKey: "whiteMediumSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25AA, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "blackSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25AB, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "whiteSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F536],
                        isSkinToneSupport: false,
                        searchKey: "largeOrangeDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F537],
                        isSkinToneSupport: false,
                        searchKey: "largeBlueDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F538],
                        isSkinToneSupport: false,
                        searchKey: "smallOrangeDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F539],
                        isSkinToneSupport: false,
                        searchKey: "smallBlueDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53A],
                        isSkinToneSupport: false,
                        searchKey: "redTrianglePointedUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53B],
                        isSkinToneSupport: false,
                        searchKey: "redTrianglePointedDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A0],
                        isSkinToneSupport: false,
                        searchKey: "diamondWithADot",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F518],
                        isSkinToneSupport: false,
                        searchKey: "radioButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F533],
                        isSkinToneSupport: false,
                        searchKey: "whiteSquareButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F532],
                        isSkinToneSupport: false,
                        searchKey: "blackSquareButton",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .flags),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F3C1],
                        isSkinToneSupport: false,
                        searchKey: "chequeredFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A9],
                        isSkinToneSupport: false,
                        searchKey: "triangularFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38C],
                        isSkinToneSupport: false,
                        searchKey: "crossedFlags",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4],
                        isSkinToneSupport: false,
                        searchKey: "blackFlag",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F3, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "whiteFlag",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F3, 0xFE0F, 0x200D, 0x1F308],
                        isSkinToneSupport: false,
                        searchKey: "rainbowFlag",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F3, 0xFE0F, 0x200D, 0x26A7, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "transgenderFlag",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0x200D, 0x2620, 0xFE0F],
                        isSkinToneSupport: false,
                        searchKey: "pirateFlag",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagAscensionIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagAndorra",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagUnitedArabEmirates",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagAfghanistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagAntiguaBarbuda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagAnguilla",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagAlbania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagArmenia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagAngola",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F6],
                        isSkinToneSupport: false,
                        searchKey: "flagAntarctica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagArgentina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagAmericanSamoa",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagAustria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagAustralia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagAruba",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FD],
                        isSkinToneSupport: false,
                        searchKey: "flagÅlandIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagAzerbaijan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagBosniaHerzegovina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1E7],
                        isSkinToneSupport: false,
                        searchKey: "flagBarbados",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagBangladesh",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagBelgium",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagBurkinaFaso",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagBulgaria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagBahrain",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagBurundi",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EF],
                        isSkinToneSupport: false,
                        searchKey: "flagBenin",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagStBarthélemy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagBermuda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagBrunei",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagBolivia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F6],
                        isSkinToneSupport: false,
                        searchKey: "flagCaribbeanNetherlands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagBrazil",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagBahamas",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagBhutan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FB],
                        isSkinToneSupport: false,
                        searchKey: "flagBouvetIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagBotswana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagBelarus",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagBelize",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagCanada",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagCocosKeelingIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagCongoKinshasa",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagCentralAfricanRepublic",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagCongoBrazzaville",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagSwitzerland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagCôteDIvoire",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagCookIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagChile",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagCameroon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagChina",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagColombia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F5],
                        isSkinToneSupport: false,
                        searchKey: "flagClippertonIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagCostaRica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagCuba",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FB],
                        isSkinToneSupport: false,
                        searchKey: "flagCapeVerde",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagCuraçao",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FD],
                        isSkinToneSupport: false,
                        searchKey: "flagChristmasIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagCyprus",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagCzechia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagGermany",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagDiegoGarcia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1EF],
                        isSkinToneSupport: false,
                        searchKey: "flagDjibouti",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagDenmark",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagDominica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagDominicanRepublic",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagAlgeria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagCeutaMelilla",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagEcuador",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagEstonia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagEgypt",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagWesternSahara",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagEritrea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagSpain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagEthiopia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagEuropeanUnion",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagFinland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1EF],
                        isSkinToneSupport: false,
                        searchKey: "flagFiji",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagFalklandIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagMicronesia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagFaroeIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagFrance",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagGabon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1E7],
                        isSkinToneSupport: false,
                        searchKey: "flagUnitedKingdom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagGrenada",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagGeorgia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagFrenchGuiana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagGuernsey",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagGhana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagGibraltar",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagGreenland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagGambia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagGuinea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F5],
                        isSkinToneSupport: false,
                        searchKey: "flagGuadeloupe",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F6],
                        isSkinToneSupport: false,
                        searchKey: "flagEquatorialGuinea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagGreece",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagSouthGeorgiaSouthSandwichIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagGuatemala",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagGuam",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagGuineaBissau",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagGuyana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagHongKongSARChina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagHeardMcDonaldIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagHonduras",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagCroatia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagHaiti",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagHungary",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagCanaryIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagIndonesia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagIreland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagIsrael",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagIsleOfMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagIndia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagBritishIndianOceanTerritory",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F6],
                        isSkinToneSupport: false,
                        searchKey: "flagIraq",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagIran",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagIceland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagItaly",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagJersey",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagJamaica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagJordan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1F5],
                        isSkinToneSupport: false,
                        searchKey: "flagJapan",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagKenya",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagKyrgyzstan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagCambodia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagKiribati",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagComoros",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagStKittsNevis",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F5],
                        isSkinToneSupport: false,
                        searchKey: "flagNorthKorea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagSouthKorea",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagKuwait",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagCaymanIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagKazakhstan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagLaos",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1E7],
                        isSkinToneSupport: false,
                        searchKey: "flagLebanon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagStLucia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagLiechtenstein",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagSriLanka",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagLiberia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagLesotho",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagLithuania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagLuxembourg",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1FB],
                        isSkinToneSupport: false,
                        searchKey: "flagLatvia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagLibya",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagMorocco",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagMonaco",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagMoldova",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagMontenegro",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagStMartin",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagMadagascar",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagMarshallIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagNorthMacedonia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagMali",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagMyanmarBurma",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagMongolia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagMacaoSARChina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F5],
                        isSkinToneSupport: false,
                        searchKey: "flagNorthernMarianaIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F6],
                        isSkinToneSupport: false,
                        searchKey: "flagMartinique",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagMauritania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagMontserrat",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagMalta",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagMauritius",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FB],
                        isSkinToneSupport: false,
                        searchKey: "flagMaldives",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagMalawi",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FD],
                        isSkinToneSupport: false,
                        searchKey: "flagMexico",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagMalaysia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagMozambique",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagNamibia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagNewCaledonia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagNiger",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagNorfolkIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagNigeria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagNicaragua",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagNetherlands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagNorway",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F5],
                        isSkinToneSupport: false,
                        searchKey: "flagNepal",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagNauru",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagNiue",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagNewZealand",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F4, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagOman",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagPanama",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagPeru",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagFrenchPolynesia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagPapuaNewGuinea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagPhilippines",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagPakistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagPoland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagStPierreMiquelon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagPitcairnIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagPuertoRico",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagPalestinianTerritories",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagPortugal",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagPalau",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagParaguay",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F6, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagQatar",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagRéunion",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagRomania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagSerbia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagRussia",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagRwanda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagSaudiArabia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E7],
                        isSkinToneSupport: false,
                        searchKey: "flagSolomonIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagSeychelles",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagSudan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagSweden",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagSingapore",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagStHelena",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagSlovenia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EF],
                        isSkinToneSupport: false,
                        searchKey: "flagSvalbardJanMayen",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagSlovakia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagSierraLeone",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagSanMarino",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagSenegal",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagSomalia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagSuriname",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagSouthSudan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagSãoToméPríncipe",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FB],
                        isSkinToneSupport: false,
                        searchKey: "flagElSalvador",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FD],
                        isSkinToneSupport: false,
                        searchKey: "flagSintMaarten",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagSyria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagEswatini",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagTristanDaCunha",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagTurksCaicosIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1E9],
                        isSkinToneSupport: false,
                        searchKey: "flagChad",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagFrenchSouthernTerritories",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagTogo",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1ED],
                        isSkinToneSupport: false,
                        searchKey: "flagThailand",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1EF],
                        isSkinToneSupport: false,
                        searchKey: "flagTajikistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagTokelau",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F1],
                        isSkinToneSupport: false,
                        searchKey: "flagTimorLeste",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagTurkmenistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagTunisia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F4],
                        isSkinToneSupport: false,
                        searchKey: "flagTonga",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F7],
                        isSkinToneSupport: false,
                        searchKey: "flagTurkey",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagTrinidadTobago",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1FB],
                        isSkinToneSupport: false,
                        searchKey: "flagTuvalu",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagTaiwan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagTanzania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagUkraine",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagUganda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagUSOutlyingIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagUnitedNations",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagUnitedStates",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1FE],
                        isSkinToneSupport: false,
                        searchKey: "flagUruguay",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1FF],
                        isSkinToneSupport: false,
                        searchKey: "flagUzbekistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagVaticanCity",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1E8],
                        isSkinToneSupport: false,
                        searchKey: "flagStVincentGrenadines",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagVenezuela",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1EC],
                        isSkinToneSupport: false,
                        searchKey: "flagBritishVirginIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1EE],
                        isSkinToneSupport: false,
                        searchKey: "flagUSVirginIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1F3],
                        isSkinToneSupport: false,
                        searchKey: "flagVietnam",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1FA],
                        isSkinToneSupport: false,
                        searchKey: "flagVanuatu",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FC, 0x1F1EB],
                        isSkinToneSupport: false,
                        searchKey: "flagWallisFutuna",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FC, 0x1F1F8],
                        isSkinToneSupport: false,
                        searchKey: "flagSamoa",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FD, 0x1F1F0],
                        isSkinToneSupport: false,
                        searchKey: "flagKosovo",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FE, 0x1F1EA],
                        isSkinToneSupport: false,
                        searchKey: "flagYemen",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FE, 0x1F1F9],
                        isSkinToneSupport: false,
                        searchKey: "flagMayotte",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FF, 0x1F1E6],
                        isSkinToneSupport: false,
                        searchKey: "flagSouthAfrica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FF, 0x1F1F2],
                        isSkinToneSupport: false,
                        searchKey: "flagZambia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FF, 0x1F1FC],
                        isSkinToneSupport: false,
                        searchKey: "flagZimbabwe",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0xE0067, 0xE0062, 0xE0065, 0xE006E, 0xE0067, 0xE007F],
                        isSkinToneSupport: false,
                        searchKey: "flagEngland",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0xE0067, 0xE0062, 0xE0073, 0xE0063, 0xE0074, 0xE007F],
                        isSkinToneSupport: false,
                        searchKey: "flagScotland",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0xE0067, 0xE0062, 0xE0077, 0xE006C, 0xE0073, 0xE007F],
                        isSkinToneSupport: false,
                        searchKey: "flagWales",
                        unicodeVersion: 5.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            )
        ]
    }
    
    // MARK: - Private Methods
    
    /// Returns localized name for the emoji category.
    private func getEmojiCategoryTitle(for type: MCEmojiCategoryType) -> String {
        return NSLocalizedString(
            type.localizeKey,
            tableName: "MCEmojiPickerLocalizable",
            bundle: .module,
            comment: ""
        )
    }
}
