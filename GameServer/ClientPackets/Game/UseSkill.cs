using System;
using System.Drawing;
using System.Linq;
using GameServer.Model.Units;
using GameServer.ServerPackets.Game;
using Console = Colorful.Console;

namespace GameServer.ClientPackets.Game
{
    /// <summary>
    /// Sent when a user trys to use a skill
    /// </summary>
    public class UseSkill : ClientGameBasePacket
    {
        /// <summary>
        /// The skill used
        /// </summary>
        private readonly int _skillId;

        /// <summary>
        /// Who we hit
        /// </summary>
        private readonly int _target;

        public UseSkill(byte[] data, GameSession client) : base(data, client)
        {
            if (GetClient().GameInstance == null) return;

            GetInt(); // Current SP!
            _skillId = GetInt(); // Skill Id
            var num = GetInt(); // Num Enemies hit?
            _target = -1; // Start at a miss

            for (var i = 0; i < num; i++)
            {
                // Temp: just take last
                _target = GetInt(); // Target id - or self for aoe?
            }

            // High priority
            HighPriority = true;
        }

        public override string GetType()
        {
            return "USE_SKILL";
        }

        protected override void RunImpl()
        {
            // Check practice mode
            if (GetClient().GameInstance == null) return;

            // Temp: just forward
            Unit.TryUseSkill(_skillId, _target);
        }
    }
}